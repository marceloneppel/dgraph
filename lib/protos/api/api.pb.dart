///
//  Generated code. Do not modify.
//  source: api.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'api.pbenum.dart';

export 'api.pbenum.dart';

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Request',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'startTs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, 'query')
    ..m<$core.String, $core.String>(5, 'vars',
        entryClassName: 'Request.VarsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('api'))
    ..aOB(6, 'readOnly')
    ..aOB(7, 'bestEffort')
    ..pc<Mutation>(12, 'mutations', $pb.PbFieldType.PM,
        subBuilder: Mutation.create)
    ..aOB(13, 'commitNow')
    ..hasRequiredFields = false;

  Request._() : super();
  factory Request() => create();
  factory Request.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Request clone() => Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) =>
      super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTs => $_getI64(0);
  @$pb.TagNumber(1)
  set startTs($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTs() => clearField(1);

  @$pb.TagNumber(4)
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(4)
  set query($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(4)
  void clearQuery() => clearField(4);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get vars => $_getMap(2);

  @$pb.TagNumber(6)
  $core.bool get readOnly => $_getBF(3);
  @$pb.TagNumber(6)
  set readOnly($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReadOnly() => $_has(3);
  @$pb.TagNumber(6)
  void clearReadOnly() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get bestEffort => $_getBF(4);
  @$pb.TagNumber(7)
  set bestEffort($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasBestEffort() => $_has(4);
  @$pb.TagNumber(7)
  void clearBestEffort() => clearField(7);

  @$pb.TagNumber(12)
  $core.List<Mutation> get mutations => $_getList(5);

  @$pb.TagNumber(13)
  $core.bool get commitNow => $_getBF(6);
  @$pb.TagNumber(13)
  set commitNow($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasCommitNow() => $_has(6);
  @$pb.TagNumber(13)
  void clearCommitNow() => clearField(13);
}

class Uids extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Uids',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..pPS(1, 'uids')
    ..hasRequiredFields = false;

  Uids._() : super();
  factory Uids() => create();
  factory Uids.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Uids.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Uids clone() => Uids()..mergeFromMessage(this);
  Uids copyWith(void Function(Uids) updates) =>
      super.copyWith((message) => updates(message as Uids));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Uids create() => Uids._();
  Uids createEmptyInstance() => create();
  static $pb.PbList<Uids> createRepeated() => $pb.PbList<Uids>();
  @$core.pragma('dart2js:noInline')
  static Uids getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uids>(create);
  static Uids _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get uids => $_getList(0);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Response',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'json', $pb.PbFieldType.OY)
    ..aOM<TxnContext>(2, 'txn', subBuilder: TxnContext.create)
    ..aOM<Latency>(3, 'latency', subBuilder: Latency.create)
    ..aOM<Metrics>(4, 'metrics', subBuilder: Metrics.create)
    ..m<$core.String, $core.String>(12, 'uids',
        entryClassName: 'Response.UidsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('api'))
    ..hasRequiredFields = false;

  Response._() : super();
  factory Response() => create();
  factory Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Response clone() => Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get json => $_getN(0);
  @$pb.TagNumber(1)
  set json($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearJson() => clearField(1);

  @$pb.TagNumber(2)
  TxnContext get txn => $_getN(1);
  @$pb.TagNumber(2)
  set txn(TxnContext v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTxn() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxn() => clearField(2);
  @$pb.TagNumber(2)
  TxnContext ensureTxn() => $_ensure(1);

  @$pb.TagNumber(3)
  Latency get latency => $_getN(2);
  @$pb.TagNumber(3)
  set latency(Latency v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLatency() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatency() => clearField(3);
  @$pb.TagNumber(3)
  Latency ensureLatency() => $_ensure(2);

  @$pb.TagNumber(4)
  Metrics get metrics => $_getN(3);
  @$pb.TagNumber(4)
  set metrics(Metrics v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMetrics() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetrics() => clearField(4);
  @$pb.TagNumber(4)
  Metrics ensureMetrics() => $_ensure(3);

  @$pb.TagNumber(12)
  $core.Map<$core.String, $core.String> get uids => $_getMap(4);
}

class Mutation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Mutation',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'setJson', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'deleteJson', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'setNquads', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'delNquads', $pb.PbFieldType.OY)
    ..pc<NQuad>(5, 'set', $pb.PbFieldType.PM, subBuilder: NQuad.create)
    ..pc<NQuad>(6, 'del', $pb.PbFieldType.PM, subBuilder: NQuad.create)
    ..aOS(9, 'cond')
    ..aOB(14, 'commitNow')
    ..hasRequiredFields = false;

  Mutation._() : super();
  factory Mutation() => create();
  factory Mutation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Mutation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Mutation clone() => Mutation()..mergeFromMessage(this);
  Mutation copyWith(void Function(Mutation) updates) =>
      super.copyWith((message) => updates(message as Mutation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Mutation create() => Mutation._();
  Mutation createEmptyInstance() => create();
  static $pb.PbList<Mutation> createRepeated() => $pb.PbList<Mutation>();
  @$core.pragma('dart2js:noInline')
  static Mutation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mutation>(create);
  static Mutation _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get setJson => $_getN(0);
  @$pb.TagNumber(1)
  set setJson($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSetJson() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetJson() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deleteJson => $_getN(1);
  @$pb.TagNumber(2)
  set deleteJson($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDeleteJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteJson() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get setNquads => $_getN(2);
  @$pb.TagNumber(3)
  set setNquads($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSetNquads() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetNquads() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get delNquads => $_getN(3);
  @$pb.TagNumber(4)
  set delNquads($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDelNquads() => $_has(3);
  @$pb.TagNumber(4)
  void clearDelNquads() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<NQuad> get set => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<NQuad> get del => $_getList(5);

  @$pb.TagNumber(9)
  $core.String get cond => $_getSZ(6);
  @$pb.TagNumber(9)
  set cond($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCond() => $_has(6);
  @$pb.TagNumber(9)
  void clearCond() => clearField(9);

  @$pb.TagNumber(14)
  $core.bool get commitNow => $_getBF(7);
  @$pb.TagNumber(14)
  set commitNow($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasCommitNow() => $_has(7);
  @$pb.TagNumber(14)
  void clearCommitNow() => clearField(14);
}

class Operation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Operation',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'schema')
    ..aOS(2, 'dropAttr')
    ..aOB(3, 'dropAll')
    ..e<Operation_DropOp>(4, 'dropOp', $pb.PbFieldType.OE,
        defaultOrMaker: Operation_DropOp.NONE,
        valueOf: Operation_DropOp.valueOf,
        enumValues: Operation_DropOp.values)
    ..aOS(5, 'dropValue')
    ..hasRequiredFields = false;

  Operation._() : super();
  factory Operation() => create();
  factory Operation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Operation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Operation clone() => Operation()..mergeFromMessage(this);
  Operation copyWith(void Function(Operation) updates) =>
      super.copyWith((message) => updates(message as Operation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Operation create() => Operation._();
  Operation createEmptyInstance() => create();
  static $pb.PbList<Operation> createRepeated() => $pb.PbList<Operation>();
  @$core.pragma('dart2js:noInline')
  static Operation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Operation>(create);
  static Operation _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get schema => $_getSZ(0);
  @$pb.TagNumber(1)
  set schema($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dropAttr => $_getSZ(1);
  @$pb.TagNumber(2)
  set dropAttr($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDropAttr() => $_has(1);
  @$pb.TagNumber(2)
  void clearDropAttr() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get dropAll => $_getBF(2);
  @$pb.TagNumber(3)
  set dropAll($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDropAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearDropAll() => clearField(3);

  @$pb.TagNumber(4)
  Operation_DropOp get dropOp => $_getN(3);
  @$pb.TagNumber(4)
  set dropOp(Operation_DropOp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDropOp() => $_has(3);
  @$pb.TagNumber(4)
  void clearDropOp() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get dropValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set dropValue($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasDropValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDropValue() => clearField(5);
}

class Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Payload',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'data', $pb.PbFieldType.OY, protoName: 'Data')
    ..hasRequiredFields = false;

  Payload._() : super();
  factory Payload() => create();
  factory Payload.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Payload.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Payload clone() => Payload()..mergeFromMessage(this);
  Payload copyWith(void Function(Payload) updates) =>
      super.copyWith((message) => updates(message as Payload));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payload create() => Payload._();
  Payload createEmptyInstance() => create();
  static $pb.PbList<Payload> createRepeated() => $pb.PbList<Payload>();
  @$core.pragma('dart2js:noInline')
  static Payload getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payload>(create);
  static Payload _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class TxnContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxnContext',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'startTs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, 'commitTs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(3, 'aborted')
    ..pPS(4, 'keys')
    ..pPS(5, 'preds')
    ..hasRequiredFields = false;

  TxnContext._() : super();
  factory TxnContext() => create();
  factory TxnContext.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TxnContext.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TxnContext clone() => TxnContext()..mergeFromMessage(this);
  TxnContext copyWith(void Function(TxnContext) updates) =>
      super.copyWith((message) => updates(message as TxnContext));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxnContext create() => TxnContext._();
  TxnContext createEmptyInstance() => create();
  static $pb.PbList<TxnContext> createRepeated() => $pb.PbList<TxnContext>();
  @$core.pragma('dart2js:noInline')
  static TxnContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TxnContext>(create);
  static TxnContext _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTs => $_getI64(0);
  @$pb.TagNumber(1)
  set startTs($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStartTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTs() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get commitTs => $_getI64(1);
  @$pb.TagNumber(2)
  set commitTs($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCommitTs() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitTs() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get aborted => $_getBF(2);
  @$pb.TagNumber(3)
  set aborted($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAborted() => $_has(2);
  @$pb.TagNumber(3)
  void clearAborted() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get keys => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get preds => $_getList(4);
}

class Check extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Check',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  Check._() : super();
  factory Check() => create();
  factory Check.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Check.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Check clone() => Check()..mergeFromMessage(this);
  Check copyWith(void Function(Check) updates) =>
      super.copyWith((message) => updates(message as Check));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Check create() => Check._();
  Check createEmptyInstance() => create();
  static $pb.PbList<Check> createRepeated() => $pb.PbList<Check>();
  @$core.pragma('dart2js:noInline')
  static Check getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Check>(create);
  static Check _defaultInstance;
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Version',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'tag')
    ..hasRequiredFields = false;

  Version._() : super();
  factory Version() => create();
  factory Version.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Version clone() => Version()..mergeFromMessage(this);
  Version copyWith(void Function(Version) updates) =>
      super.copyWith((message) => updates(message as Version));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);
}

class Latency extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Latency',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, 'parsingNs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, 'processingNs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, 'encodingNs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, 'assignTimestampNs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, 'totalNs', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  Latency._() : super();
  factory Latency() => create();
  factory Latency.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Latency.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Latency clone() => Latency()..mergeFromMessage(this);
  Latency copyWith(void Function(Latency) updates) =>
      super.copyWith((message) => updates(message as Latency));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Latency create() => Latency._();
  Latency createEmptyInstance() => create();
  static $pb.PbList<Latency> createRepeated() => $pb.PbList<Latency>();
  @$core.pragma('dart2js:noInline')
  static Latency getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Latency>(create);
  static Latency _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get parsingNs => $_getI64(0);
  @$pb.TagNumber(1)
  set parsingNs($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParsingNs() => $_has(0);
  @$pb.TagNumber(1)
  void clearParsingNs() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get processingNs => $_getI64(1);
  @$pb.TagNumber(2)
  set processingNs($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProcessingNs() => $_has(1);
  @$pb.TagNumber(2)
  void clearProcessingNs() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get encodingNs => $_getI64(2);
  @$pb.TagNumber(3)
  set encodingNs($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEncodingNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncodingNs() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get assignTimestampNs => $_getI64(3);
  @$pb.TagNumber(4)
  set assignTimestampNs($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAssignTimestampNs() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssignTimestampNs() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalNs => $_getI64(4);
  @$pb.TagNumber(5)
  set totalNs($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTotalNs() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalNs() => clearField(5);
}

class Metrics extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Metrics',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, 'numUids',
        entryClassName: 'Metrics.NumUidsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OU6,
        packageName: const $pb.PackageName('api'))
    ..hasRequiredFields = false;

  Metrics._() : super();
  factory Metrics() => create();
  factory Metrics.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Metrics.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Metrics clone() => Metrics()..mergeFromMessage(this);
  Metrics copyWith(void Function(Metrics) updates) =>
      super.copyWith((message) => updates(message as Metrics));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metrics create() => Metrics._();
  Metrics createEmptyInstance() => create();
  static $pb.PbList<Metrics> createRepeated() => $pb.PbList<Metrics>();
  @$core.pragma('dart2js:noInline')
  static Metrics getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metrics>(create);
  static Metrics _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get numUids => $_getMap(0);
}

class NQuad extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NQuad',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'subject')
    ..aOS(2, 'predicate')
    ..aOS(3, 'objectId')
    ..aOM<Value>(4, 'objectValue', subBuilder: Value.create)
    ..aOS(5, 'label')
    ..aOS(6, 'lang')
    ..pc<Facet>(7, 'facets', $pb.PbFieldType.PM, subBuilder: Facet.create)
    ..hasRequiredFields = false;

  NQuad._() : super();
  factory NQuad() => create();
  factory NQuad.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NQuad.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NQuad clone() => NQuad()..mergeFromMessage(this);
  NQuad copyWith(void Function(NQuad) updates) =>
      super.copyWith((message) => updates(message as NQuad));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NQuad create() => NQuad._();
  NQuad createEmptyInstance() => create();
  static $pb.PbList<NQuad> createRepeated() => $pb.PbList<NQuad>();
  @$core.pragma('dart2js:noInline')
  static NQuad getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NQuad>(create);
  static NQuad _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subject => $_getSZ(0);
  @$pb.TagNumber(1)
  set subject($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSubject() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubject() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get predicate => $_getSZ(1);
  @$pb.TagNumber(2)
  set predicate($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPredicate() => $_has(1);
  @$pb.TagNumber(2)
  void clearPredicate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get objectId => $_getSZ(2);
  @$pb.TagNumber(3)
  set objectId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasObjectId() => $_has(2);
  @$pb.TagNumber(3)
  void clearObjectId() => clearField(3);

  @$pb.TagNumber(4)
  Value get objectValue => $_getN(3);
  @$pb.TagNumber(4)
  set objectValue(Value v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasObjectValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjectValue() => clearField(4);
  @$pb.TagNumber(4)
  Value ensureObjectValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lang => $_getSZ(5);
  @$pb.TagNumber(6)
  set lang($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLang() => $_has(5);
  @$pb.TagNumber(6)
  void clearLang() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Facet> get facets => $_getList(6);
}

enum Value_Val {
  defaultVal,
  bytesVal,
  intVal,
  boolVal,
  strVal,
  doubleVal,
  geoVal,
  dateVal,
  datetimeVal,
  passwordVal,
  uidVal,
  notSet
}

class Value extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Value_Val> _Value_ValByTag = {
    1: Value_Val.defaultVal,
    2: Value_Val.bytesVal,
    3: Value_Val.intVal,
    4: Value_Val.boolVal,
    5: Value_Val.strVal,
    6: Value_Val.doubleVal,
    7: Value_Val.geoVal,
    8: Value_Val.dateVal,
    9: Value_Val.datetimeVal,
    10: Value_Val.passwordVal,
    11: Value_Val.uidVal,
    0: Value_Val.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Value',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
    ..aOS(1, 'defaultVal')
    ..a<$core.List<$core.int>>(2, 'bytesVal', $pb.PbFieldType.OY)
    ..aInt64(3, 'intVal')
    ..aOB(4, 'boolVal')
    ..aOS(5, 'strVal')
    ..a<$core.double>(6, 'doubleVal', $pb.PbFieldType.OD)
    ..a<$core.List<$core.int>>(7, 'geoVal', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'dateVal', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(9, 'datetimeVal', $pb.PbFieldType.OY)
    ..aOS(10, 'passwordVal')
    ..a<$fixnum.Int64>(11, 'uidVal', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  Value._() : super();
  factory Value() => create();
  factory Value.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Value clone() => Value()..mergeFromMessage(this);
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value _defaultInstance;

  Value_Val whichVal() => _Value_ValByTag[$_whichOneof(0)];
  void clearVal() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get defaultVal => $_getSZ(0);
  @$pb.TagNumber(1)
  set defaultVal($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDefaultVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefaultVal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get bytesVal => $_getN(1);
  @$pb.TagNumber(2)
  set bytesVal($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBytesVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytesVal() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get intVal => $_getI64(2);
  @$pb.TagNumber(3)
  set intVal($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIntVal() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntVal() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolVal => $_getBF(3);
  @$pb.TagNumber(4)
  set boolVal($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBoolVal() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolVal() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get strVal => $_getSZ(4);
  @$pb.TagNumber(5)
  set strVal($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStrVal() => $_has(4);
  @$pb.TagNumber(5)
  void clearStrVal() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get doubleVal => $_getN(5);
  @$pb.TagNumber(6)
  set doubleVal($core.double v) {
    $_setDouble(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDoubleVal() => $_has(5);
  @$pb.TagNumber(6)
  void clearDoubleVal() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get geoVal => $_getN(6);
  @$pb.TagNumber(7)
  set geoVal($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasGeoVal() => $_has(6);
  @$pb.TagNumber(7)
  void clearGeoVal() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get dateVal => $_getN(7);
  @$pb.TagNumber(8)
  set dateVal($core.List<$core.int> v) {
    $_setBytes(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasDateVal() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateVal() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get datetimeVal => $_getN(8);
  @$pb.TagNumber(9)
  set datetimeVal($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasDatetimeVal() => $_has(8);
  @$pb.TagNumber(9)
  void clearDatetimeVal() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get passwordVal => $_getSZ(9);
  @$pb.TagNumber(10)
  set passwordVal($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPasswordVal() => $_has(9);
  @$pb.TagNumber(10)
  void clearPasswordVal() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get uidVal => $_getI64(10);
  @$pb.TagNumber(11)
  set uidVal($fixnum.Int64 v) {
    $_setInt64(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUidVal() => $_has(10);
  @$pb.TagNumber(11)
  void clearUidVal() => clearField(11);
}

class Facet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Facet',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..a<$core.List<$core.int>>(2, 'value', $pb.PbFieldType.OY)
    ..e<Facet_ValType>(3, 'valType', $pb.PbFieldType.OE,
        defaultOrMaker: Facet_ValType.STRING,
        valueOf: Facet_ValType.valueOf,
        enumValues: Facet_ValType.values)
    ..pPS(4, 'tokens')
    ..aOS(5, 'alias')
    ..hasRequiredFields = false;

  Facet._() : super();
  factory Facet() => create();
  factory Facet.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Facet.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Facet clone() => Facet()..mergeFromMessage(this);
  Facet copyWith(void Function(Facet) updates) =>
      super.copyWith((message) => updates(message as Facet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Facet create() => Facet._();
  Facet createEmptyInstance() => create();
  static $pb.PbList<Facet> createRepeated() => $pb.PbList<Facet>();
  @$core.pragma('dart2js:noInline')
  static Facet getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Facet>(create);
  static Facet _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  Facet_ValType get valType => $_getN(2);
  @$pb.TagNumber(3)
  set valType(Facet_ValType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tokens => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get alias => $_getSZ(4);
  @$pb.TagNumber(5)
  set alias($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAlias() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlias() => clearField(5);
}

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginRequest',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'userid')
    ..aOS(2, 'password')
    ..aOS(3, 'refreshToken')
    ..hasRequiredFields = false;

  LoginRequest._() : super();
  factory LoginRequest() => create();
  factory LoginRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  LoginRequest copyWith(void Function(LoginRequest) updates) =>
      super.copyWith((message) => updates(message as LoginRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() =>
      $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userid => $_getSZ(0);
  @$pb.TagNumber(1)
  set userid($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => clearField(3);
}

class Jwt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Jwt',
      package: const $pb.PackageName('api'), createEmptyInstance: create)
    ..aOS(1, 'accessJwt')
    ..aOS(2, 'refreshJwt')
    ..hasRequiredFields = false;

  Jwt._() : super();
  factory Jwt() => create();
  factory Jwt.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Jwt.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Jwt clone() => Jwt()..mergeFromMessage(this);
  Jwt copyWith(void Function(Jwt) updates) =>
      super.copyWith((message) => updates(message as Jwt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Jwt create() => Jwt._();
  Jwt createEmptyInstance() => create();
  static $pb.PbList<Jwt> createRepeated() => $pb.PbList<Jwt>();
  @$core.pragma('dart2js:noInline')
  static Jwt getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Jwt>(create);
  static Jwt _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessJwt => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessJwt($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccessJwt() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessJwt() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshJwt => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshJwt($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRefreshJwt() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshJwt() => clearField(2);
}

class DgraphApi {
  $pb.RpcClient _client;
  DgraphApi(this._client);

  $async.Future<Response> login($pb.ClientContext ctx, LoginRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(
        ctx, 'Dgraph', 'Login', request, emptyResponse);
  }

  $async.Future<Response> query($pb.ClientContext ctx, Request request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(
        ctx, 'Dgraph', 'Query', request, emptyResponse);
  }

  $async.Future<Payload> alter($pb.ClientContext ctx, Operation request) {
    var emptyResponse = Payload();
    return _client.invoke<Payload>(
        ctx, 'Dgraph', 'Alter', request, emptyResponse);
  }

  $async.Future<TxnContext> commitOrAbort(
      $pb.ClientContext ctx, TxnContext request) {
    var emptyResponse = TxnContext();
    return _client.invoke<TxnContext>(
        ctx, 'Dgraph', 'CommitOrAbort', request, emptyResponse);
  }

  $async.Future<Version> checkVersion($pb.ClientContext ctx, Check request) {
    var emptyResponse = Version();
    return _client.invoke<Version>(
        ctx, 'Dgraph', 'CheckVersion', request, emptyResponse);
  }
}
