[![Build Status](https://travis-ci.org/marceloneppel/dgraph.svg?branch=master)](https://travis-ci.org/marceloneppel/dgraph)

# dgraph
[Dgraph](https://dgraph.io) Dart client which communicates with the server using [gRPC](https://grpc.io/).

Before using this client, we highly recommend that you go through [tour.dgraph.io] and [docs.dgraph.io]
to understand how to run and work with Dgraph.

[docs.dgraph.io]:https://docs.dgraph.io
[tour.dgraph.io]:https://tour.dgraph.io


## Table of contents

- [dgraph](#dgraph)
  - [Table of contents](#table-of-contents)
  - [Using a client](#using-a-client)
    - [Create a client](#create-a-client)
    - [Alter the database](#alter-the-database)
    - [Create a transaction](#create-a-transaction)
    - [Run a mutation](#run-a-mutation)
    - [Run a query](#run-a-query)
    - [Commit a transaction](#commit-a-transaction)
  - [Development](#development)
    - [Running tests](#running-tests)

## Using a client

### Create a client

`dgraphClient` object can be initialised by passing it a list of `api.DgraphApi` clients as
variadic arguments. Connecting to multiple Dgraph servers in the same cluster allows for better
distribution of workload.

The following code snippet shows just one connection.

```dart
DgraphRpcClient rpcClient =
    DgraphRpcClient("localhost", 9080, const ChannelCredentials.insecure());
Dgraph dgraphClient = dgraph.NewDgraphClient(api.DgraphApi(rpcClient));
```

### Alter the database

To set the schema, create an instance of `api.Operation` and use the `Alter` endpoint.

```dart
api.Operation operation = api.Operation();
operation.schema = """
name: string @index(exact) .
""";
await dgraphClient.Alter(clientContext, operation);
```

`Operation` contains other fields as well, including `dropAttr` and `dropAll`.
`dropAll` is useful if you wish to discard all the data, and start from a clean
slate, without bringing the instance down. `dropAttr` is used to drop all the data
related to a predicate.

### Create a transaction

To create a transaction, call `dgraphClient.NewTxn()`, which returns a `Txn` object. This
operation incurs no network overhead.

It is a good practice to call `txn.Discard()` on a finally block after it is initialized.
Calling `txn.Discard()` after `txn.Commit()` is a no-op and you can call `txn.Discard()` multiple
times with no additional side-effects.

```dart
Txn txn;
ClientContext clientContext = ClientContext();
try {
  txn = dgraphClient.NewTxn();
  // Perform some queries and mutations.
  // Commit the transaction.
} finally {
  txn.Discard(clientContext);
}
```

### Run a mutation

`txn.Mutate(clientContext, mutation)` runs a mutation. It takes in a `ClientContext` and a `api.Mutation`
object. You can set the data using JSON or RDF N-Quad format.

We define a Map to represent a Person and convert an instance of it to use with `Mutation`
object.
```dart
Map<String, dynamic> p = {
  "uid": "_:alice",
  "name": "Alice",
};
List<int> pb = utf8.encode(json.encode(p));
api.Mutation mutation = api.Mutation();
mutation.setJson = pb;
api.Assigned assigned = await txn.Mutate(clientContext, mutation);
print("Assigned: $assigned");
// uids: {alice : 0x1}
```

Sometimes, you only want to commit a mutation, without querying anything further.
In such cases, you can use `mutation.commitNow = true` to indicate that the
mutation must be immediately committed.

### Run a query

You can run a query by calling `txn.Query(clientContext, query)`. You will need to pass in a GraphQL+- query string. If
you want to pass an additional map of any variables that you might want to set in the query, call
`txn.QueryWithVars(clientContext, query, vars)` with the variables map as third argument.

Let's run the following query with a variable $a:
```dart
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
// {"all":[{"name":"Alice"}]}
```

### Commit a transaction

A transaction can be committed using the `txn.Commit(clientContext)` method. If your transaction
consisted solely of calls to `txn.Query` or `txn.QueryWithVars`, and no calls to
`txn.Mutate`, then calling `txn.Commit` is not necessary.

An error will be returned if other transactions running concurrently modify the same
data that was modified in this transaction. It is up to the user to retry
transactions when they fail.

```dart
Txn txn;
ClientContext clientContext = ClientContext();
try {
  txn = dgraphClient.NewTxn();
  // Perform some queries and mutations.
  txn.Commit(clientContext);
} catch (e) {
  // Retry or handle error
}
```

## Development

### Running tests

Make sure you have `dgraph` installed before you run the tests. This script will run the unit and
integration tests.

```sh
pub run test --concurrency=1
```