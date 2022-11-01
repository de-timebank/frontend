///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ServiceRequestData_State extends $pb.ProtobufEnum {
  static const ServiceRequestData_State PENDING = ServiceRequestData_State._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PENDING');
  static const ServiceRequestData_State ACCEPTED = ServiceRequestData_State._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPTED');
  static const ServiceRequestData_State ONGOING = ServiceRequestData_State._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONGOING');
  static const ServiceRequestData_State COMPLETED = ServiceRequestData_State._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMPLETED');
  static const ServiceRequestData_State ABORTED = ServiceRequestData_State._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABORTED');

  static const $core.List<ServiceRequestData_State> values = <ServiceRequestData_State> [
    PENDING,
    ACCEPTED,
    ONGOING,
    COMPLETED,
    ABORTED,
  ];

  static final $core.Map<$core.int, ServiceRequestData_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ServiceRequestData_State? valueOf($core.int value) => _byValue[value];

  const ServiceRequestData_State._($core.int v, $core.String n) : super(v, n);
}

