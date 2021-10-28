///
//  Generated code. Do not modify.
//  source: api.proto
//

// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'api.pb.dart' as $0;
import 'api.pbjson.dart';

export 'api.pb.dart';

abstract class DgraphServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Response> login(
      $pb.ServerContext ctx, $0.LoginRequest request);
  $async.Future<$0.Response> query($pb.ServerContext ctx, $0.Request request);
  $async.Future<$0.Payload> alter($pb.ServerContext ctx, $0.Operation request);
  $async.Future<$0.TxnContext> commitOrAbort(
      $pb.ServerContext ctx, $0.TxnContext request);
  $async.Future<$0.Version> checkVersion(
      $pb.ServerContext ctx, $0.Check request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Login':
        return $0.LoginRequest();
      case 'Query':
        return $0.Request();
      case 'Alter':
        return $0.Operation();
      case 'CommitOrAbort':
        return $0.TxnContext();
      case 'CheckVersion':
        return $0.Check();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Login':
        return this.login(ctx, request as $0.LoginRequest);
      case 'Query':
        return this.query(ctx, request as $0.Request);
      case 'Alter':
        return this.alter(ctx, request as $0.Operation);
      case 'CommitOrAbort':
        return this.commitOrAbort(ctx, request as $0.TxnContext);
      case 'CheckVersion':
        return this.checkVersion(ctx, request as $0.Check);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => DgraphServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => DgraphServiceBase$messageJson;
}
