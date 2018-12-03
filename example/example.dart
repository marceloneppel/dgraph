import 'package:dgraph/api.dart';
import 'package:dgraph/dgraph.dart';
import 'package:dgraph/protos/api/api_pb.dart' as api;
import 'package:dgraph/txn.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'dart:convert';

void main(List<String> arguments) async {
  // Create a client
  DgraphRpcClient rpcClient =
      DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
  api.DgraphApi dgraphApi = api.DgraphApi(rpcClient);
  Dgraph dgraphClient = dgraph.NewDgraphClient(dgraphApi);

  Txn txn;
  ClientContext clientContext = ClientContext();
  try {
    // Alter the database
    api.Operation operation = api.Operation();
    operation.schema = """
    name: string @index(exact) .
    """;
    await dgraphClient.Alter(clientContext, operation);

    // Create a transaction
    txn = dgraphClient.NewTxn();

    // Run a mutation
    Map<String, dynamic> p = {
      "uid": "_:alice",
      "name": "Alice",
    };
    List<int> pb = utf8.encode(json.encode(p));
    api.Mutation mutation = api.Mutation();
    mutation.setJson = pb;
    api.Assigned assigned = await txn.Mutate(clientContext, mutation);
    print("Assigned: $assigned");

    // Run a query
    String query = """
    query all(\$a: string) {
      all(func: eq(name, \$a)) {
        name
      }
    }
    """;
    api.Response response =
        await txn.QueryWithVars(clientContext, query, {"\$a": "Alice"});
    print(
        "Response: ${latin1.decode(base64.decode(json.decode(response.writeToJson())['1']))}");

    // Commit a transaction
    txn.Commit(clientContext);
  } catch (e) {
    print("Error: $e");
  } finally {
    if (txn != null) {
      txn.Discard(clientContext);
    }
  }
}
