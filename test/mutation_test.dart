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
  Dgraph dgraphClient;
  Txn txn;
  ClientContext clientContext;

  _setUpData() async {
    api.Operation operation = api.Operation();
    operation.schema = """
    name: string @index(exact) .
    """;
    await dgraphClient.Alter(clientContext, operation);
  }

  setUp(() async {
    rpcClient =
        DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
    dgraphClient = dgraph.NewDgraphClient(api.DgraphApi(rpcClient));
    clientContext = ClientContext();
    await _setUpData();
  });

  tearDown(() async {
    var operation = api.Operation();
    operation.dropAll = true;
    await dgraphClient.Alter(clientContext, operation);
  });

  group("mutation -> ", () {
    test("should retrieve the uid of the inserted data", () async {
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
      txn = dgraphClient.NewTxn();
      var response = await txn.Mutate(clientContext, request);
      expect(response.uids.keys, equals(['alice']));
      expect(response.uids.values.length, 1);
      expect(response.uids.values.join(','), startsWith('0x'));
      await txn.Commit(clientContext);
    });
  });
}
