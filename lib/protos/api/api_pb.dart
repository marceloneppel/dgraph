///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'api_pbenum.dart';

export 'api_pbenum.dart';

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Request',
      package: const $pb.PackageName('api'))
    ..aOS(1, 'query')
    ..m<String, String>(2, 'vars', $pb.PbFieldType.OS, $pb.PbFieldType.OS)
    ..a<Int64>(13, 'startTs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<LinRead>(
        14, 'linRead', $pb.PbFieldType.OM, LinRead.getDefault, LinRead.create)
    ..aOB(15, 'readOnly')
    ..hasRequiredFields = false;

  Request() : super();
  Request.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Request.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Request clone() => new Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) =>
      super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  static Request create() => new Request();
  static $pb.PbList<Request> createRepeated() => new $pb.PbList<Request>();
  static Request getDefault() => _defaultInstance ??= create()..freeze();
  static Request _defaultInstance;
  static void $checkItem(Request v) {
    if (v is! Request) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get query => $_getS(0, '');
  set query(String v) {
    $_setString(0, v);
  }

  bool hasQuery() => $_has(0);
  void clearQuery() => clearField(1);

  Map<String, String> get vars => $_getMap(1);

  Int64 get startTs => $_getI64(2);
  set startTs(Int64 v) {
    $_setInt64(2, v);
  }

  bool hasStartTs() => $_has(2);
  void clearStartTs() => clearField(13);

  LinRead get linRead => $_getN(3);
  set linRead(LinRead v) {
    setField(14, v);
  }

  bool hasLinRead() => $_has(3);
  void clearLinRead() => clearField(14);

  bool get readOnly => $_get(4, false);
  set readOnly(bool v) {
    $_setBool(4, v);
  }

  bool hasReadOnly() => $_has(4);
  void clearReadOnly() => clearField(15);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Response',
      package: const $pb.PackageName('api'))
    ..a<List<int>>(1, 'json', $pb.PbFieldType.OY)
    ..pp<SchemaNode>(2, 'schema', $pb.PbFieldType.PM, SchemaNode.$checkItem,
        SchemaNode.create)
    ..a<TxnContext>(
        3, 'txn', $pb.PbFieldType.OM, TxnContext.getDefault, TxnContext.create)
    ..a<Latency>(
        12, 'latency', $pb.PbFieldType.OM, Latency.getDefault, Latency.create)
    ..hasRequiredFields = false;

  Response() : super();
  Response.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Response.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Response clone() => new Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  static Response create() => new Response();
  static $pb.PbList<Response> createRepeated() => new $pb.PbList<Response>();
  static Response getDefault() => _defaultInstance ??= create()..freeze();
  static Response _defaultInstance;
  static void $checkItem(Response v) {
    if (v is! Response) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get json => $_getN(0);
  set json(List<int> v) {
    $_setBytes(0, v);
  }

  bool hasJson() => $_has(0);
  void clearJson() => clearField(1);

  List<SchemaNode> get schema => $_getList(1);

  TxnContext get txn => $_getN(2);
  set txn(TxnContext v) {
    setField(3, v);
  }

  bool hasTxn() => $_has(2);
  void clearTxn() => clearField(3);

  Latency get latency => $_getN(3);
  set latency(Latency v) {
    setField(12, v);
  }

  bool hasLatency() => $_has(3);
  void clearLatency() => clearField(12);
}

class Assigned extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Assigned',
      package: const $pb.PackageName('api'))
    ..m<String, String>(1, 'uids', $pb.PbFieldType.OS, $pb.PbFieldType.OS)
    ..a<TxnContext>(2, 'context', $pb.PbFieldType.OM, TxnContext.getDefault,
        TxnContext.create)
    ..a<Latency>(
        12, 'latency', $pb.PbFieldType.OM, Latency.getDefault, Latency.create)
    ..hasRequiredFields = false;

  Assigned() : super();
  Assigned.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Assigned.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Assigned clone() => new Assigned()..mergeFromMessage(this);
  Assigned copyWith(void Function(Assigned) updates) =>
      super.copyWith((message) => updates(message as Assigned));
  $pb.BuilderInfo get info_ => _i;
  static Assigned create() => new Assigned();
  static $pb.PbList<Assigned> createRepeated() => new $pb.PbList<Assigned>();
  static Assigned getDefault() => _defaultInstance ??= create()..freeze();
  static Assigned _defaultInstance;
  static void $checkItem(Assigned v) {
    if (v is! Assigned) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Map<String, String> get uids => $_getMap(0);

  TxnContext get context => $_getN(1);
  set context(TxnContext v) {
    setField(2, v);
  }

  bool hasContext() => $_has(1);
  void clearContext() => clearField(2);

  Latency get latency => $_getN(2);
  set latency(Latency v) {
    setField(12, v);
  }

  bool hasLatency() => $_has(2);
  void clearLatency() => clearField(12);
}

class Mutation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Mutation',
      package: const $pb.PackageName('api'))
    ..a<List<int>>(1, 'setJson', $pb.PbFieldType.OY)
    ..a<List<int>>(2, 'deleteJson', $pb.PbFieldType.OY)
    ..a<List<int>>(3, 'setNquads', $pb.PbFieldType.OY)
    ..a<List<int>>(4, 'delNquads', $pb.PbFieldType.OY)
    ..pp<NQuad>(10, 'set', $pb.PbFieldType.PM, NQuad.$checkItem, NQuad.create)
    ..pp<NQuad>(11, 'del', $pb.PbFieldType.PM, NQuad.$checkItem, NQuad.create)
    ..a<Int64>(13, 'startTs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(14, 'commitNow')
    ..aOB(15, 'ignoreIndexConflict')
    ..hasRequiredFields = false;

  Mutation() : super();
  Mutation.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Mutation.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Mutation clone() => new Mutation()..mergeFromMessage(this);
  Mutation copyWith(void Function(Mutation) updates) =>
      super.copyWith((message) => updates(message as Mutation));
  $pb.BuilderInfo get info_ => _i;
  static Mutation create() => new Mutation();
  static $pb.PbList<Mutation> createRepeated() => new $pb.PbList<Mutation>();
  static Mutation getDefault() => _defaultInstance ??= create()..freeze();
  static Mutation _defaultInstance;
  static void $checkItem(Mutation v) {
    if (v is! Mutation) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get setJson => $_getN(0);
  set setJson(List<int> v) {
    $_setBytes(0, v);
  }

  bool hasSetJson() => $_has(0);
  void clearSetJson() => clearField(1);

  List<int> get deleteJson => $_getN(1);
  set deleteJson(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasDeleteJson() => $_has(1);
  void clearDeleteJson() => clearField(2);

  List<int> get setNquads => $_getN(2);
  set setNquads(List<int> v) {
    $_setBytes(2, v);
  }

  bool hasSetNquads() => $_has(2);
  void clearSetNquads() => clearField(3);

  List<int> get delNquads => $_getN(3);
  set delNquads(List<int> v) {
    $_setBytes(3, v);
  }

  bool hasDelNquads() => $_has(3);
  void clearDelNquads() => clearField(4);

  List<NQuad> get set => $_getList(4);

  List<NQuad> get del => $_getList(5);

  Int64 get startTs => $_getI64(6);
  set startTs(Int64 v) {
    $_setInt64(6, v);
  }

  bool hasStartTs() => $_has(6);
  void clearStartTs() => clearField(13);

  bool get commitNow => $_get(7, false);
  set commitNow(bool v) {
    $_setBool(7, v);
  }

  bool hasCommitNow() => $_has(7);
  void clearCommitNow() => clearField(14);

  bool get ignoreIndexConflict => $_get(8, false);
  set ignoreIndexConflict(bool v) {
    $_setBool(8, v);
  }

  bool hasIgnoreIndexConflict() => $_has(8);
  void clearIgnoreIndexConflict() => clearField(15);
}

class Operation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Operation', package: const $pb.PackageName('api'))
        ..aOS(1, 'schema')
        ..aOS(2, 'dropAttr')
        ..aOB(3, 'dropAll')
        ..hasRequiredFields = false;

  Operation() : super();
  Operation.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Operation.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Operation clone() => new Operation()..mergeFromMessage(this);
  Operation copyWith(void Function(Operation) updates) =>
      super.copyWith((message) => updates(message as Operation));
  $pb.BuilderInfo get info_ => _i;
  static Operation create() => new Operation();
  static $pb.PbList<Operation> createRepeated() => new $pb.PbList<Operation>();
  static Operation getDefault() => _defaultInstance ??= create()..freeze();
  static Operation _defaultInstance;
  static void $checkItem(Operation v) {
    if (v is! Operation) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get schema => $_getS(0, '');
  set schema(String v) {
    $_setString(0, v);
  }

  bool hasSchema() => $_has(0);
  void clearSchema() => clearField(1);

  String get dropAttr => $_getS(1, '');
  set dropAttr(String v) {
    $_setString(1, v);
  }

  bool hasDropAttr() => $_has(1);
  void clearDropAttr() => clearField(2);

  bool get dropAll => $_get(2, false);
  set dropAll(bool v) {
    $_setBool(2, v);
  }

  bool hasDropAll() => $_has(2);
  void clearDropAll() => clearField(3);
}

class Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Payload', package: const $pb.PackageName('api'))
        ..a<List<int>>(1, 'data', $pb.PbFieldType.OY)
        ..hasRequiredFields = false;

  Payload() : super();
  Payload.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Payload.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Payload clone() => new Payload()..mergeFromMessage(this);
  Payload copyWith(void Function(Payload) updates) =>
      super.copyWith((message) => updates(message as Payload));
  $pb.BuilderInfo get info_ => _i;
  static Payload create() => new Payload();
  static $pb.PbList<Payload> createRepeated() => new $pb.PbList<Payload>();
  static Payload getDefault() => _defaultInstance ??= create()..freeze();
  static Payload _defaultInstance;
  static void $checkItem(Payload v) {
    if (v is! Payload) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get data => $_getN(0);
  set data(List<int> v) {
    $_setBytes(0, v);
  }

  bool hasData() => $_has(0);
  void clearData() => clearField(1);
}

class TxnContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TxnContext',
      package: const $pb.PackageName('api'))
    ..a<Int64>(1, 'startTs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..a<Int64>(2, 'commitTs', $pb.PbFieldType.OU6, Int64.ZERO)
    ..aOB(3, 'aborted')
    ..pPS(4, 'keys')
    ..pPS(5, 'preds')
    ..a<LinRead>(
        13, 'linRead', $pb.PbFieldType.OM, LinRead.getDefault, LinRead.create)
    ..hasRequiredFields = false;

  TxnContext() : super();
  TxnContext.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  TxnContext.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  TxnContext clone() => new TxnContext()..mergeFromMessage(this);
  TxnContext copyWith(void Function(TxnContext) updates) =>
      super.copyWith((message) => updates(message as TxnContext));
  $pb.BuilderInfo get info_ => _i;
  static TxnContext create() => new TxnContext();
  static $pb.PbList<TxnContext> createRepeated() =>
      new $pb.PbList<TxnContext>();
  static TxnContext getDefault() => _defaultInstance ??= create()..freeze();
  static TxnContext _defaultInstance;
  static void $checkItem(TxnContext v) {
    if (v is! TxnContext) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Int64 get startTs => $_getI64(0);
  set startTs(Int64 v) {
    $_setInt64(0, v);
  }

  bool hasStartTs() => $_has(0);
  void clearStartTs() => clearField(1);

  Int64 get commitTs => $_getI64(1);
  set commitTs(Int64 v) {
    $_setInt64(1, v);
  }

  bool hasCommitTs() => $_has(1);
  void clearCommitTs() => clearField(2);

  bool get aborted => $_get(2, false);
  set aborted(bool v) {
    $_setBool(2, v);
  }

  bool hasAborted() => $_has(2);
  void clearAborted() => clearField(3);

  List<String> get keys => $_getList(3);

  List<String> get preds => $_getList(4);

  LinRead get linRead => $_getN(5);
  set linRead(LinRead v) {
    setField(13, v);
  }

  bool hasLinRead() => $_has(5);
  void clearLinRead() => clearField(13);
}

class Check extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Check', package: const $pb.PackageName('api'))
        ..hasRequiredFields = false;

  Check() : super();
  Check.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Check.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Check clone() => new Check()..mergeFromMessage(this);
  Check copyWith(void Function(Check) updates) =>
      super.copyWith((message) => updates(message as Check));
  $pb.BuilderInfo get info_ => _i;
  static Check create() => new Check();
  static $pb.PbList<Check> createRepeated() => new $pb.PbList<Check>();
  static Check getDefault() => _defaultInstance ??= create()..freeze();
  static Check _defaultInstance;
  static void $checkItem(Check v) {
    if (v is! Check) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Version', package: const $pb.PackageName('api'))
        ..aOS(1, 'tag')
        ..hasRequiredFields = false;

  Version() : super();
  Version.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Version.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Version clone() => new Version()..mergeFromMessage(this);
  Version copyWith(void Function(Version) updates) =>
      super.copyWith((message) => updates(message as Version));
  $pb.BuilderInfo get info_ => _i;
  static Version create() => new Version();
  static $pb.PbList<Version> createRepeated() => new $pb.PbList<Version>();
  static Version getDefault() => _defaultInstance ??= create()..freeze();
  static Version _defaultInstance;
  static void $checkItem(Version v) {
    if (v is! Version) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get tag => $_getS(0, '');
  set tag(String v) {
    $_setString(0, v);
  }

  bool hasTag() => $_has(0);
  void clearTag() => clearField(1);
}

class LinRead extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('LinRead', package: const $pb.PackageName('api'))
        ..m<int, Int64>(1, 'ids', $pb.PbFieldType.OU3, $pb.PbFieldType.OU6)
        ..e<LinRead_Sequencing>(
            2,
            'sequencing',
            $pb.PbFieldType.OE,
            LinRead_Sequencing.CLIENT_SIDE,
            LinRead_Sequencing.valueOf,
            LinRead_Sequencing.values)
        ..hasRequiredFields = false;

  LinRead() : super();
  LinRead.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  LinRead.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  LinRead clone() => new LinRead()..mergeFromMessage(this);
  LinRead copyWith(void Function(LinRead) updates) =>
      super.copyWith((message) => updates(message as LinRead));
  $pb.BuilderInfo get info_ => _i;
  static LinRead create() => new LinRead();
  static $pb.PbList<LinRead> createRepeated() => new $pb.PbList<LinRead>();
  static LinRead getDefault() => _defaultInstance ??= create()..freeze();
  static LinRead _defaultInstance;
  static void $checkItem(LinRead v) {
    if (v is! LinRead) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Map<int, Int64> get ids => $_getMap(0);

  LinRead_Sequencing get sequencing => $_getN(1);
  set sequencing(LinRead_Sequencing v) {
    setField(2, v);
  }

  bool hasSequencing() => $_has(1);
  void clearSequencing() => clearField(2);
}

class Latency extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Latency', package: const $pb.PackageName('api'))
        ..a<Int64>(1, 'parsingNs', $pb.PbFieldType.OU6, Int64.ZERO)
        ..a<Int64>(2, 'processingNs', $pb.PbFieldType.OU6, Int64.ZERO)
        ..a<Int64>(3, 'encodingNs', $pb.PbFieldType.OU6, Int64.ZERO)
        ..hasRequiredFields = false;

  Latency() : super();
  Latency.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Latency.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Latency clone() => new Latency()..mergeFromMessage(this);
  Latency copyWith(void Function(Latency) updates) =>
      super.copyWith((message) => updates(message as Latency));
  $pb.BuilderInfo get info_ => _i;
  static Latency create() => new Latency();
  static $pb.PbList<Latency> createRepeated() => new $pb.PbList<Latency>();
  static Latency getDefault() => _defaultInstance ??= create()..freeze();
  static Latency _defaultInstance;
  static void $checkItem(Latency v) {
    if (v is! Latency) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Int64 get parsingNs => $_getI64(0);
  set parsingNs(Int64 v) {
    $_setInt64(0, v);
  }

  bool hasParsingNs() => $_has(0);
  void clearParsingNs() => clearField(1);

  Int64 get processingNs => $_getI64(1);
  set processingNs(Int64 v) {
    $_setInt64(1, v);
  }

  bool hasProcessingNs() => $_has(1);
  void clearProcessingNs() => clearField(2);

  Int64 get encodingNs => $_getI64(2);
  set encodingNs(Int64 v) {
    $_setInt64(2, v);
  }

  bool hasEncodingNs() => $_has(2);
  void clearEncodingNs() => clearField(3);
}

class NQuad extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NQuad',
      package: const $pb.PackageName('api'))
    ..aOS(1, 'subject')
    ..aOS(2, 'predicate')
    ..aOS(3, 'objectId')
    ..a<Value>(
        4, 'objectValue', $pb.PbFieldType.OM, Value.getDefault, Value.create)
    ..aOS(5, 'label')
    ..aOS(6, 'lang')
    ..pp<Facet>(7, 'facets', $pb.PbFieldType.PM, Facet.$checkItem, Facet.create)
    ..hasRequiredFields = false;

  NQuad() : super();
  NQuad.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  NQuad.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  NQuad clone() => new NQuad()..mergeFromMessage(this);
  NQuad copyWith(void Function(NQuad) updates) =>
      super.copyWith((message) => updates(message as NQuad));
  $pb.BuilderInfo get info_ => _i;
  static NQuad create() => new NQuad();
  static $pb.PbList<NQuad> createRepeated() => new $pb.PbList<NQuad>();
  static NQuad getDefault() => _defaultInstance ??= create()..freeze();
  static NQuad _defaultInstance;
  static void $checkItem(NQuad v) {
    if (v is! NQuad) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get subject => $_getS(0, '');
  set subject(String v) {
    $_setString(0, v);
  }

  bool hasSubject() => $_has(0);
  void clearSubject() => clearField(1);

  String get predicate => $_getS(1, '');
  set predicate(String v) {
    $_setString(1, v);
  }

  bool hasPredicate() => $_has(1);
  void clearPredicate() => clearField(2);

  String get objectId => $_getS(2, '');
  set objectId(String v) {
    $_setString(2, v);
  }

  bool hasObjectId() => $_has(2);
  void clearObjectId() => clearField(3);

  Value get objectValue => $_getN(3);
  set objectValue(Value v) {
    setField(4, v);
  }

  bool hasObjectValue() => $_has(3);
  void clearObjectValue() => clearField(4);

  String get label => $_getS(4, '');
  set label(String v) {
    $_setString(4, v);
  }

  bool hasLabel() => $_has(4);
  void clearLabel() => clearField(5);

  String get lang => $_getS(5, '');
  set lang(String v) {
    $_setString(5, v);
  }

  bool hasLang() => $_has(5);
  void clearLang() => clearField(6);

  List<Facet> get facets => $_getList(6);
}

class Value extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Value', package: const $pb.PackageName('api'))
        ..aOS(1, 'defaultVal')
        ..a<List<int>>(2, 'bytesVal', $pb.PbFieldType.OY)
        ..aInt64(3, 'intVal')
        ..aOB(4, 'boolVal')
        ..aOS(5, 'strVal')
        ..a<double>(6, 'doubleVal', $pb.PbFieldType.OD)
        ..a<List<int>>(7, 'geoVal', $pb.PbFieldType.OY)
        ..a<List<int>>(8, 'dateVal', $pb.PbFieldType.OY)
        ..a<List<int>>(9, 'datetimeVal', $pb.PbFieldType.OY)
        ..aOS(10, 'passwordVal')
        ..a<Int64>(11, 'uidVal', $pb.PbFieldType.OU6, Int64.ZERO)
        ..hasRequiredFields = false;

  Value() : super();
  Value.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Value.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Value clone() => new Value()..mergeFromMessage(this);
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value));
  $pb.BuilderInfo get info_ => _i;
  static Value create() => new Value();
  static $pb.PbList<Value> createRepeated() => new $pb.PbList<Value>();
  static Value getDefault() => _defaultInstance ??= create()..freeze();
  static Value _defaultInstance;
  static void $checkItem(Value v) {
    if (v is! Value) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get defaultVal => $_getS(0, '');
  set defaultVal(String v) {
    $_setString(0, v);
  }

  bool hasDefaultVal() => $_has(0);
  void clearDefaultVal() => clearField(1);

  List<int> get bytesVal => $_getN(1);
  set bytesVal(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasBytesVal() => $_has(1);
  void clearBytesVal() => clearField(2);

  Int64 get intVal => $_getI64(2);
  set intVal(Int64 v) {
    $_setInt64(2, v);
  }

  bool hasIntVal() => $_has(2);
  void clearIntVal() => clearField(3);

  bool get boolVal => $_get(3, false);
  set boolVal(bool v) {
    $_setBool(3, v);
  }

  bool hasBoolVal() => $_has(3);
  void clearBoolVal() => clearField(4);

  String get strVal => $_getS(4, '');
  set strVal(String v) {
    $_setString(4, v);
  }

  bool hasStrVal() => $_has(4);
  void clearStrVal() => clearField(5);

  double get doubleVal => $_getN(5);
  set doubleVal(double v) {
    $_setDouble(5, v);
  }

  bool hasDoubleVal() => $_has(5);
  void clearDoubleVal() => clearField(6);

  List<int> get geoVal => $_getN(6);
  set geoVal(List<int> v) {
    $_setBytes(6, v);
  }

  bool hasGeoVal() => $_has(6);
  void clearGeoVal() => clearField(7);

  List<int> get dateVal => $_getN(7);
  set dateVal(List<int> v) {
    $_setBytes(7, v);
  }

  bool hasDateVal() => $_has(7);
  void clearDateVal() => clearField(8);

  List<int> get datetimeVal => $_getN(8);
  set datetimeVal(List<int> v) {
    $_setBytes(8, v);
  }

  bool hasDatetimeVal() => $_has(8);
  void clearDatetimeVal() => clearField(9);

  String get passwordVal => $_getS(9, '');
  set passwordVal(String v) {
    $_setString(9, v);
  }

  bool hasPasswordVal() => $_has(9);
  void clearPasswordVal() => clearField(10);

  Int64 get uidVal => $_getI64(10);
  set uidVal(Int64 v) {
    $_setInt64(10, v);
  }

  bool hasUidVal() => $_has(10);
  void clearUidVal() => clearField(11);
}

class Facet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('Facet', package: const $pb.PackageName('api'))
        ..aOS(1, 'key')
        ..a<List<int>>(2, 'value', $pb.PbFieldType.OY)
        ..e<Facet_ValType>(3, 'valType', $pb.PbFieldType.OE,
            Facet_ValType.STRING, Facet_ValType.valueOf, Facet_ValType.values)
        ..pPS(4, 'tokens')
        ..aOS(5, 'alias')
        ..hasRequiredFields = false;

  Facet() : super();
  Facet.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  Facet.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  Facet clone() => new Facet()..mergeFromMessage(this);
  Facet copyWith(void Function(Facet) updates) =>
      super.copyWith((message) => updates(message as Facet));
  $pb.BuilderInfo get info_ => _i;
  static Facet create() => new Facet();
  static $pb.PbList<Facet> createRepeated() => new $pb.PbList<Facet>();
  static Facet getDefault() => _defaultInstance ??= create()..freeze();
  static Facet _defaultInstance;
  static void $checkItem(Facet v) {
    if (v is! Facet) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get key => $_getS(0, '');
  set key(String v) {
    $_setString(0, v);
  }

  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  List<int> get value => $_getN(1);
  set value(List<int> v) {
    $_setBytes(1, v);
  }

  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  Facet_ValType get valType => $_getN(2);
  set valType(Facet_ValType v) {
    setField(3, v);
  }

  bool hasValType() => $_has(2);
  void clearValType() => clearField(3);

  List<String> get tokens => $_getList(3);

  String get alias => $_getS(4, '');
  set alias(String v) {
    $_setString(4, v);
  }

  bool hasAlias() => $_has(4);
  void clearAlias() => clearField(5);
}

class SchemaNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('SchemaNode', package: const $pb.PackageName('api'))
        ..aOS(1, 'predicate')
        ..aOS(2, 'type')
        ..aOB(3, 'index')
        ..pPS(4, 'tokenizer')
        ..aOB(5, 'reverse')
        ..aOB(6, 'count')
        ..aOB(7, 'list')
        ..aOB(8, 'upsert')
        ..aOB(9, 'lang')
        ..hasRequiredFields = false;

  SchemaNode() : super();
  SchemaNode.fromBuffer(List<int> i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);
  SchemaNode.fromJson(String i,
      [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromJson(i, r);
  SchemaNode clone() => new SchemaNode()..mergeFromMessage(this);
  SchemaNode copyWith(void Function(SchemaNode) updates) =>
      super.copyWith((message) => updates(message as SchemaNode));
  $pb.BuilderInfo get info_ => _i;
  static SchemaNode create() => new SchemaNode();
  static $pb.PbList<SchemaNode> createRepeated() =>
      new $pb.PbList<SchemaNode>();
  static SchemaNode getDefault() => _defaultInstance ??= create()..freeze();
  static SchemaNode _defaultInstance;
  static void $checkItem(SchemaNode v) {
    if (v is! SchemaNode) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get predicate => $_getS(0, '');
  set predicate(String v) {
    $_setString(0, v);
  }

  bool hasPredicate() => $_has(0);
  void clearPredicate() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) {
    $_setString(1, v);
  }

  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  bool get index => $_get(2, false);
  set index(bool v) {
    $_setBool(2, v);
  }

  bool hasIndex() => $_has(2);
  void clearIndex() => clearField(3);

  List<String> get tokenizer => $_getList(3);

  bool get reverse => $_get(4, false);
  set reverse(bool v) {
    $_setBool(4, v);
  }

  bool hasReverse() => $_has(4);
  void clearReverse() => clearField(5);

  bool get count => $_get(5, false);
  set count(bool v) {
    $_setBool(5, v);
  }

  bool hasCount() => $_has(5);
  void clearCount() => clearField(6);

  bool get list => $_get(6, false);
  set list(bool v) {
    $_setBool(6, v);
  }

  bool hasList() => $_has(6);
  void clearList() => clearField(7);

  bool get upsert => $_get(7, false);
  set upsert(bool v) {
    $_setBool(7, v);
  }

  bool hasUpsert() => $_has(7);
  void clearUpsert() => clearField(8);

  bool get lang => $_get(8, false);
  set lang(bool v) {
    $_setBool(8, v);
  }

  bool hasLang() => $_has(8);
  void clearLang() => clearField(9);
}

class DgraphApi {
  $pb.RpcClient _client;
  DgraphApi(this._client);

  $async.Future<Response> query($pb.ClientContext ctx, Request request) {
    var emptyResponse = new Response();
    return _client.invoke<Response>(
        ctx, 'Dgraph', 'Query', request, emptyResponse);
  }

  $async.Future<Assigned> mutate($pb.ClientContext ctx, Mutation request) {
    var emptyResponse = new Assigned();
    return _client.invoke<Assigned>(
        ctx, 'Dgraph', 'Mutate', request, emptyResponse);
  }

  $async.Future<Payload> alter($pb.ClientContext ctx, Operation request) {
    var emptyResponse = new Payload();
    return _client.invoke<Payload>(
        ctx, 'Dgraph', 'Alter', request, emptyResponse);
  }

  $async.Future<TxnContext> commitOrAbort(
      $pb.ClientContext ctx, TxnContext request) {
    var emptyResponse = new TxnContext();
    return _client.invoke<TxnContext>(
        ctx, 'Dgraph', 'CommitOrAbort', request, emptyResponse);
  }

  $async.Future<Version> checkVersion($pb.ClientContext ctx, Check request) {
    var emptyResponse = new Version();
    return _client.invoke<Version>(
        ctx, 'Dgraph', 'CheckVersion', request, emptyResponse);
  }
}
