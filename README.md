[![Build Status](https://travis-ci.org/marceloneppel/dgraph.svg?branch=master)](https://travis-ci.org/marceloneppel/dgraph)

# dgraph
[Dgraph](https://dgraph.io) Dart client which communicates with the server using [gRPC](https://grpc.io/).

Before using this client, we highly recommend that you go through [tour.dgraph.io] and [docs.dgraph.io]
to understand how to run and work with Dgraph.

[docs.dgraph.io]:https://docs.dgraph.io
[tour.dgraph.io]:https://tour.dgraph.io


## Table of contents

- [Supported Versions](#supported-versions)
- [Using a client](#using-a-client)
  - [Creating a client](#creating-a-client)
  - [Altering the database](#altering-the-database)
  - [Creating a transaction](#creating-a-transaction)
  - [Running a mutation](#running-a-mutation)
  - [Running a query](#running-a-query)
  - [Committing a transaction](#committing-a-transaction)
- [Development](#development)
  - [Running tests](#running-tests)
  - [Updating protobuf](#updating-protobuf)

## Supported Versions

Depending on the version of Dgraph that you are connecting to, you will have to
use a different version of this client.

| Dgraph version | dgraph client version | 
|:--------------:|:---------------------:|
|  dgraph 1.0.X  |  dgraph client 0.6.0  |
|  dgraph 1.1.X  |  dgraph client 1.1.X  |

Note: One of the most important API breakages from dgraph client v0.6.0 to v1.1.X is in
the function `Txn.Mutate`. This function returns an `api.Assigned`
value until v0.6.0 but an `api.Response` in v1.1.X.

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

### Altering the database

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

### Creating a transaction

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

Read-only transactions can be created by calling `dgraphClient.NewReadOnlyTxn()`. Read-only
transactions are useful to increase read speed because they can circumvent the
usual consensus protocol. Read-only transactions cannot contain mutations and
trying to call `txn.Commit()` will result in an error. Calling `txn.Discard()`
will be a no-op.

### Running a mutation

`txn.Mutate(clientContext, mutation)` runs a mutation. It takes in a `ClientContext` and a `api.Mutation`
object. You can set the data using JSON or RDF N-Quad format.

To use JSON, use the fields setJson and deleteJson, which accept an encoded string
representing the nodes to be added or removed respectively (either as a JSON map
or a list). To use RDF, use the fields setNquads and delNquads, which accept
a string representing the valid RDF triples (one per line) to added or removed
respectively. This protobuf object also contains the set and del fields which
accept a list of RDF triples that have already been parsed into our internal
format. As such, these fields are mainly used internally and users should use
the setNquads and delNquads instead if they are planning on using RDF.

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
api.Request request = api.Request();
request.mutations.add(mutation);
api.Response response = await txn.Mutate(clientContext, request);
print("Response: ${response.uids}");
// {alice: 0x5}
```

Sometimes, you only want to commit a mutation, without querying anything further.
In such cases, you can use `mutation.commitNow = true` to indicate that the
mutation must be immediately committed.

### Running a query

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
print("Response: ${utf8.decode(response.json)}");
// {"all":[{"name":"Alice"}]}
```

You can also use `txn.Do` function to run a query.

```dart
request = api.Request();
request.query = query;
request.vars.addAll({"\$a": "Alice"});
response = await txn.Do(clientContext, request);
print("Response: ${utf8.decode(response.json)}");
// {"all":[{"name":"Alice"}]}
```

When running a schema query for predicate `name`, the schema response is found
in the `json` field of `api.Response` as shown below:

```dart
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
// {"schema":[{"predicate":"name","type":"string","index":true,"tokenizer":["exact"]}]}
```

### Committing a transaction

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

Make sure you have `dgraph` installed before you run the tests. This script will run the unit tests.

```sh
pub run test --concurrency=1
```

### Updating protobuf

To update protobuf execute the following command from the project root:

```sh
bash lib/protos/api/regenerate-proto.sh
```