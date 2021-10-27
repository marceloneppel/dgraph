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

  setUp(() async {
    rpcClient =
        DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
    dgraphClient = dgraph.NewDgraphClient(api.DgraphApi(rpcClient));
    txn = dgraphClient!.NewTxn();
    clientContext = ClientContext();
  });

  tearDown(() async {
    var operation = api.Operation();
    operation.dropAll = true;
    await dgraphClient!.Alter(clientContext, operation);
  });

  group("dropAll -> ", () {
    test("should drop all attributes from the schema", () async {
      var operation = api.Operation();
      operation.schema = """
      name: string @index(exact) .
      nickname: string @index(exact) .
      """;
      await dgraphClient!.Alter(clientContext, operation);

      operation = api.Operation();
      operation = api.Operation();
      operation.dropAll = true;
      await dgraphClient!.Alter(clientContext, operation);

      String query = """
      schema(pred: [name,nickname]) {
        type
        index
        reverse
        tokenizer
        list
        count
        upsert
        lang
      }
      """;
      var response = await txn.Query(clientContext, query);
      expect(json.decode(utf8.decode(response.json)), equals({}));
    });
  });

  group("dropAttr -> ", () {
    test("should drop an attribute from the schema", () async {
      var operation = api.Operation();
      operation.schema = """
      name: string @index(exact) .
      nickname: string @index(exact) .
      """;
      await dgraphClient!.Alter(clientContext, operation);

      operation = api.Operation();
      operation = api.Operation();
      operation.dropAttr = "name";
      await dgraphClient!.Alter(clientContext, operation);

      String query = """
      schema(pred: [name,nickname]) {
        type
        index
        reverse
        tokenizer
        list
        count
        upsert
        lang
      }
      """;
      var response = await txn.Query(clientContext, query);
      expect(
          json.decode(utf8.decode(response.json)),
          equals({
            'schema': [
              {
                'predicate': 'nickname',
                'type': 'string',
                'index': true,
                'tokenizer': ['exact']
              }
            ]
          }));
    });
  });

  group("schema -> ", () {
    test("should define the schema", () async {
      var operation = api.Operation();
      operation.schema = """
      name: string @index(exact) .
      """;
      await dgraphClient!.Alter(clientContext, operation);

      String query = """
      schema(pred: [name]) {
        type
        index
        reverse
        tokenizer
        list
        count
        upsert
        lang
      }
      """;
      var response = await txn.Query(clientContext, query);
      expect(
          json.decode(utf8.decode(response.json)),
          equals({
            'schema': [
              {
                'predicate': 'name',
                'type': 'string',
                'index': true,
                'tokenizer': ['exact']
              }
            ]
          }));
    });
  });
}
