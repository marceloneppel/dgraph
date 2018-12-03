///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class LinRead_Sequencing extends $pb.ProtobufEnum {
  static const LinRead_Sequencing CLIENT_SIDE = const LinRead_Sequencing._(0, 'CLIENT_SIDE');
  static const LinRead_Sequencing SERVER_SIDE = const LinRead_Sequencing._(1, 'SERVER_SIDE');

  static const List<LinRead_Sequencing> values = const <LinRead_Sequencing> [
    CLIENT_SIDE,
    SERVER_SIDE,
  ];

  static final Map<int, LinRead_Sequencing> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LinRead_Sequencing valueOf(int value) => _byValue[value];
  static void $checkItem(LinRead_Sequencing v) {
    if (v is! LinRead_Sequencing) $pb.checkItemFailed(v, 'LinRead_Sequencing');
  }

  const LinRead_Sequencing._(int v, String n) : super(v, n);
}

class Facet_ValType extends $pb.ProtobufEnum {
  static const Facet_ValType STRING = const Facet_ValType._(0, 'STRING');
  static const Facet_ValType INT = const Facet_ValType._(1, 'INT');
  static const Facet_ValType FLOAT = const Facet_ValType._(2, 'FLOAT');
  static const Facet_ValType BOOL = const Facet_ValType._(3, 'BOOL');
  static const Facet_ValType DATETIME = const Facet_ValType._(4, 'DATETIME');

  static const List<Facet_ValType> values = const <Facet_ValType> [
    STRING,
    INT,
    FLOAT,
    BOOL,
    DATETIME,
  ];

  static final Map<int, Facet_ValType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Facet_ValType valueOf(int value) => _byValue[value];
  static void $checkItem(Facet_ValType v) {
    if (v is! Facet_ValType) $pb.checkItemFailed(v, 'Facet_ValType');
  }

  const Facet_ValType._(int v, String n) : super(v, n);
}

