///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'api_pb.dart';
import 'api_pbjson.dart';

export 'api_pb.dart';

abstract class DgraphServiceBase extends GeneratedService {
  $async.Future<Response> query(ServerContext ctx, Request request);
  $async.Future<Assigned> mutate(ServerContext ctx, Mutation request);
  $async.Future<Payload> alter(ServerContext ctx, Operation request);
  $async.Future<TxnContext> commitOrAbort(
      ServerContext ctx, TxnContext request);
  $async.Future<Version> checkVersion(ServerContext ctx, Check request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'Query':
        return new Request();
      case 'Mutate':
        return new Mutation();
      case 'Alter':
        return new Operation();
      case 'CommitOrAbort':
        return new TxnContext();
      case 'CheckVersion':
        return new Check();
      default:
        throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(
      ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'Query':
        return this.query(ctx, request);
      case 'Mutate':
        return this.mutate(ctx, request);
      case 'Alter':
        return this.alter(ctx, request);
      case 'CommitOrAbort':
        return this.commitOrAbort(ctx, request);
      case 'CheckVersion':
        return this.checkVersion(ctx, request);
      default:
        throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => Dgraph$json;
  Map<String, Map<String, dynamic>> get $messageJson => Dgraph$messageJson;
}
