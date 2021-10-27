import 'dart:convert';

import 'package:dgraph/txn.dart';
import 'package:test/test.dart';
import 'package:dgraph/api.dart';
import 'package:dgraph/dgraph.dart';
import 'package:dgraph/protos/api/api.pb.dart' as api;
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

main() {
  DgraphRpcClient rpcClient;
  Dgraph? dgraphClient;
  late Txn txn;
  late ClientContext clientContext;

  _setUpData() async {
    api.Operation operation = api.Operation();
    operation.schema = """
    name: string @index(exact) .
    """;
    await dgraphClient!.Alter(clientContext, operation);

    Map<String, dynamic> p = {
      "uid": "_:alice",
      "name": "Alice",
      "age": 18,
    };
    List<int> pb = utf8.encode(json.encode(p));
    api.Mutation mutation = api.Mutation();
    mutation.setJson = pb;
    api.Request request = api.Request();
    request.mutations.add(mutation);
    txn = dgraphClient!.NewTxn();
    await txn.Mutate(clientContext, request);
    await txn.Commit(clientContext);
  }

  setUp(() async {
    rpcClient =
        DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
    dgraphClient = dgraph.NewDgraphClient(api.DgraphApi(rpcClient));
    clientContext = ClientContext();
    await _setUpData();
    txn = dgraphClient!.NewTxn();
  });

  tearDown(() async {
    var operation = api.Operation();
    operation.dropAll = true;
    await dgraphClient!.Alter(clientContext, operation);
  });

  group("query -> ", () {
    test("should check if the database contains an existing data", () async {
      String query = """
      query all() {
        all(func: eq(name, Alice)) {
          name
          age
        }
      }
      """;
      var response = await txn.Query(clientContext, query);
      expect(
          json.decode(utf8.decode(response.json)),
          equals({
            'all': [
              {'name': 'Alice', 'age': 18}
            ]
          }));
    });
    test("should check if the database contains a non existing data", () async {
      String query = """
      query all() {
        all(func: eq(name, Bob)) {
          name
          age
        }
      }
      """;
      var response = await txn.Query(clientContext, query);
      expect(json.decode(utf8.decode(response.json)), equals({'all': []}));
    });
  });

  group("query with vars -> ", () {
    test("should check if the database contains an existing data", () async {
      String query = """
      query all(\$a: string) {
        all(func: eq(name, \$a)) {
          name
          age
        }
      }
      """;
      var response =
          await txn.QueryWithVars(clientContext, query, {"\$a": "Alice"});
      expect(
          json.decode(utf8.decode(response.json)),
          equals({
            'all': [
              {'name': 'Alice', 'age': 18}
            ]
          }));
    });
    test("should check if the database contains a non existing data", () async {
      String query = """
      query all(\$a: string) {
        all(func: eq(name, \$a)) {
          name
          age
        }
      }
      """;
      var response =
          await txn.QueryWithVars(clientContext, query, {"\$a": "Bob"});
      expect(json.decode(utf8.decode(response.json)), equals({'all': []}));
    });
  });

  group("query using txn.Do -> ", () {
    test("should check if the database contains an existing data", () async {
      String query = """
      query all(\$a: string) {
        all(func: eq(name, \$a)) {
          name
          age
        }
      }
      """;
      var request = api.Request();
      request.query = query;
      request.vars.addAll({"\$a": "Alice"});
      var response =
          await (txn.Do(clientContext, request) as Future<api.Response>);
      expect(
          json.decode(utf8.decode(response.json)),
          equals({
            'all': [
              {'name': 'Alice', 'age': 18}
            ]
          }));
    });
    test("should check if the database contains a non existing data", () async {
      String query = """
      query all(\$a: string) {
        all(func: eq(name, \$a)) {
          name
          age
        }
      }
      """;
      var request = api.Request();
      request.query = query;
      request.vars.addAll({"\$a": "Bob"});
      var response =
          await (txn.Do(clientContext, request) as Future<api.Response>);
      expect(json.decode(utf8.decode(response.json)), equals({'all': []}));
    });
  });
}
