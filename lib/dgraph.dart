import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:mutex/mutex.dart';
import 'package:protobuf/protobuf.dart';
import 'protos/api/api.pb.dart' as api;
import 'txn.dart';
import 'dart:async';
import 'dart:math';

// Dgraph is a transaction aware client to a set of dgraph server instances.
class Dgraph {
  ReadWriteMutex jwtMutex;
  api.Jwt jwt;
  List<api.DgraphApi> dc;

  // NewTxn creates a new transaction.
  Txn NewTxn() {
    return Txn(
      dg: this,
      dc: anyClient(),
      context: api.TxnContext(),
    );
  }

  Txn NewReadOnlyTxn() {
    Txn txn = NewTxn();
    txn.readOnly = true;
    return txn;
  }

  Dgraph({this.dc});

  // Login logs in the current client using the provided credentials.
  // Valid for the duration the client is alive.
  Future<Null> Login(ClientContext ctx, String userid, String password) async {
    try {
      jwtMutex.acquireWrite();

      var dc = anyClient();
      var loginRequest = api.LoginRequest();
      loginRequest.userid = userid;
      loginRequest.password = password;
      var resp = await dc.login(ctx, loginRequest);

      jwt = api.Jwt.fromJson(utf8.decode(resp.json));
    } catch (e) {
      throw e;
    } finally {
      jwtMutex.release();
    }
  }

  // By setting various fields of api.Operation, Alter can be used to do the
  // following:
  //
  // 1. Modify the schema.
  //
  // 2. Drop a predicate.
  //
  // 3. Drop the database.
  Future<Null> Alter(ClientContext ctx, api.Operation op) async {
    api.DgraphApi dc = anyClient();
    await dc.alter(ctx, op);
  }

  Future<Null> retryLogin(ClientContext ctx) async {
    try {
      jwtMutex.acquireWrite();

      if (jwt.refreshJwt.length == 0) {
        throw Exception("refresh jwt should not be empty");
      }

      var dc = anyClient();
      var loginRequest = api.LoginRequest();
      loginRequest.refreshToken = jwt.refreshJwt;
      var resp = await dc.login(ctx, loginRequest);

      jwt = api.Jwt.fromJson(utf8.decode(resp.json));
    } catch (e) {
      throw e;
    } finally {
      jwtMutex.release();
    }
  }

  ClientContext getContext(ClientContext ctx) {
    // TODO: implement
    return ctx;
  }

  // isJwtExpired returns true if the error indicates that the jwt has expired.
  bool isJwtExpired(Exception exception) {
    if (exception == null) {
      return false;
    }

    return exception is GrpcError &&
        (exception as GrpcError).code == StatusCode.unauthenticated &&
        exception.toString().contains("Token is expired");
  }

  api.DgraphApi anyClient() {
    return dc[Random().nextInt(dc.length)];
  }

  // DeleteEdges sets the edges corresponding to predicates on the node with the given uid
  // for deletion.
  // This helper function doesn't run the mutation on the server. It must be done by the user
  // after the function returns.
  dynamic get DeleteEdges => DeleteEdges;
}

_Wrapper dgraph = _Wrapper();

class DeleteEdges {
  void call(api.Mutation mu, String uid, String predicate) {
    api.NQuad nQuad = api.NQuad();
    nQuad.subject = uid;
    nQuad.predicate = predicate;
    api.Value value = api.Value();
    // _STAR_ALL is defined as x.Star in x package.
    value.defaultVal = "_STAR_ALL";
    nQuad.objectValue = value;
    mu.del.add(nQuad);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    List args = invocation.positionalArguments;
    if (args.length < 3) {
      super.noSuchMethod(invocation);
    }
    api.Mutation mu = args[0];
    String uid = args[1];
    List<String> predicates = args.sublist(2, args.length - 1);
    predicates.forEach((predicate) {
      api.NQuad nQuad = api.NQuad();
      nQuad.subject = uid;
      nQuad.predicate = predicate;
      api.Value value = api.Value();
      // _STAR_ALL is defined as x.Star in x package.
      value.defaultVal = "_STAR_ALL";
      nQuad.objectValue = value;
      mu.del.add(nQuad);
    });
  }
}

// NewDgraphClient creates a new Dgraph for interacting with the Dgraph store connected to in
// conns.
// The client can be backed by multiple connections (to the same server, or multiple servers in a
// cluster).
//
// TODO: check "A single client is thread safe for sharing with multiple dart isolates."
class NewDgraphClientFunction {
  Dgraph call(api.DgraphApi client) {
    return Dgraph(
      dc: [client],
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return Dgraph(
      dc: invocation.positionalArguments,
    );
  }
}

class _Wrapper {
  dynamic get NewDgraphClient => NewDgraphClientFunction();
}
