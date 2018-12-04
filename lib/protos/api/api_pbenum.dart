///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class LinReadSequencing extends $pb.ProtobufEnum {
  static const LinReadSequencing CLIENT_SIDE =
      const LinReadSequencing._(0, 'CLIENT_SIDE');
  static const LinReadSequencing SERVER_SIDE =
      const LinReadSequencing._(1, 'SERVER_SIDE');

  static const List<LinReadSequencing> values = const <LinReadSequencing>[
    CLIENT_SIDE,
    SERVER_SIDE,
  ];

  static final Map<int, LinReadSequencing> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static LinReadSequencing valueOf(int value) => _byValue[value];
  static void $checkItem(LinReadSequencing v) {
    if (v is! LinReadSequencing) $pb.checkItemFailed(v, 'LinRead_Sequencing');
  }

  const LinReadSequencing._(int v, String n) : super(v, n);
}

class FacetValType extends $pb.ProtobufEnum {
  static const FacetValType STRING = const FacetValType._(0, 'STRING');
  static const FacetValType INT = const FacetValType._(1, 'INT');
  static const FacetValType FLOAT = const FacetValType._(2, 'FLOAT');
  static const FacetValType BOOL = const FacetValType._(3, 'BOOL');
  static const FacetValType DATETIME = const FacetValType._(4, 'DATETIME');

  static const List<FacetValType> values = const <FacetValType>[
    STRING,
    INT,
    FLOAT,
    BOOL,
    DATETIME,
  ];

  static final Map<int, FacetValType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FacetValType valueOf(int value) => _byValue[value];
  static void $checkItem(FacetValType v) {
    if (v is! FacetValType) $pb.checkItemFailed(v, 'Facet_ValType');
  }

  const FacetValType._(int v, String n) : super(v, n);
}
