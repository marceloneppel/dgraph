import 'package:dgraph/api.dart';
import 'package:dgraph/dgraph.dart';
import 'package:dgraph/protos/api/api.pb.dart' as api;
import 'package:dgraph/txn.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'dart:convert';

void main(List<String> arguments) async {
  // Create a client
  DgraphRpcClient rpcClient =
      DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
  Dgraph dgraphClient = dgraph.NewDgraphClient(api.DgraphApi(rpcClient));

  Txn? txn;
  ClientContext clientContext = ClientContext();
  try {
    // Alter the database
    api.Operation operation = api.Operation();
    operation.schema = """
    name: string @index(exact) .
    """;
    await dgraphClient.Alter(clientContext, operation);

    txn = dgraphClient.NewTxn();
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
    api.Response response = await txn.Query(clientContext, query);
    print("Response: ${utf8.decode(response.json)}");
    txn.Discard(clientContext);

    // Create a transaction
    txn = dgraphClient.NewTxn();

    // Run a mutation
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
    response =
        await (txn.Mutate(clientContext, request) as Future<api.Response>);
    print("Response: ${response.uids}");

    // Run a query
    query = """
    query all(\$a: string) {
      all(func: eq(name, \$a)) {
        name
        age
      }
    }
    """;
    response = await txn.QueryWithVars(clientContext, query, {"\$a": "Alice"});
    print("Response: ${utf8.decode(response.json)}");

    // Commit a transaction
    await txn.Commit(clientContext);

    // Alter the database
    operation = api.Operation();
    operation.dropAttr = "age";
    await dgraphClient.Alter(clientContext, operation);

    // Create another transaction
    txn = dgraphClient.NewReadOnlyTxn();

    // Run the same query again
    response = await txn.QueryWithVars(clientContext, query, {"\$a": "Alice"});
    print("Response: ${utf8.decode(response.json)}");

    // Run the same query again, but now using txn.Do
    request = api.Request();
    request.query = query;
    request.vars.addAll({"\$a": "Alice"});
    response = await (txn.Do(clientContext, request) as Future<api.Response>);
    print("Response: ${utf8.decode(response.json)}");

    // Finish transaction without commit
    await txn.Discard(clientContext);

    // Alter the database
    operation = api.Operation();
    operation.dropAll = true;
    await dgraphClient.Alter(clientContext, operation);
  } catch (e) {
    print("Error: $e");
  } finally {
    if (txn != null) {
      await txn.Discard(clientContext);
    }
  }
}
