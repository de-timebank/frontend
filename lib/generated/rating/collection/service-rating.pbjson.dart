///
//  Generated code. Do not modify.
//  source: collection/service-rating.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use tServiceRatingDescriptor instead')
const TServiceRating$json = const {
  '1': 'TServiceRating',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'value', '3': 3, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'comment', '3': 4, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'request_id', '3': 7, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'recipient', '3': 8, '4': 1, '5': 9, '10': 'recipient'},
  ],
};

/// Descriptor for `TServiceRating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tServiceRatingDescriptor = $convert.base64Decode('Cg5UU2VydmljZVJhdGluZxIOCgJpZBgBIAEoCVICaWQSFgoGYXV0aG9yGAIgASgJUgZhdXRob3ISFAoFdmFsdWUYAyABKAVSBXZhbHVlEhgKB2NvbW1lbnQYBCABKAlSB2NvbW1lbnQSHQoKY3JlYXRlZF9hdBgFIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBiABKAlSCXVwZGF0ZWRBdBIdCgpyZXF1ZXN0X2lkGAcgASgJUglyZXF1ZXN0SWQSHAoJcmVjaXBpZW50GAggASgJUglyZWNpcGllbnQ=');
@$core.Deprecated('Use createDescriptor instead')
const Create$json = const {
  '1': 'Create',
  '3': const [Create_Payload$json, Create_Request$json, Create_Response$json],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'request_id', '3': 4, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.Create.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.TServiceRating', '10': 'rating'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUacQoHUGF5bG9hZBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSFAoFdmFsdWUYAiABKAVSBXZhbHVlEhgKB2NvbW1lbnQYAyABKAlSB2NvbW1lbnQSHQoKcmVxdWVzdF9pZBgEIAEoCVIJcmVxdWVzdElkGksKB1JlcXVlc3QSQAoHcGF5bG9hZBgBIAEoCzImLnRpbWViYW5rLnNlcnZpY2VyYXRpbmcuQ3JlYXRlLlBheWxvYWRSB3BheWxvYWQaSgoIUmVzcG9uc2USPgoGcmF0aW5nGAEgASgLMiYudGltZWJhbmsuc2VydmljZXJhdGluZy5UU2VydmljZVJhdGluZ1IGcmF0aW5n');
@$core.Deprecated('Use getDescriptor instead')
const Get$json = const {
  '1': 'Get',
  '3': const [Get_Payload$json, Get_Request$json, Get_Response$json],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'column', '3': 1, '4': 1, '5': 9, '10': 'column'},
    const {'1': 'filter', '3': 2, '4': 1, '5': 9, '10': 'filter'},
  ],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.Get.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'ratings', '3': 1, '4': 3, '5': 11, '6': '.timebank.servicerating.TServiceRating', '10': 'ratings'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaOQoHUGF5bG9hZBIWCgZjb2x1bW4YASABKAlSBmNvbHVtbhIWCgZmaWx0ZXIYAiABKAlSBmZpbHRlchpICgdSZXF1ZXN0Ej0KB3BheWxvYWQYASABKAsyIy50aW1lYmFuay5zZXJ2aWNlcmF0aW5nLkdldC5QYXlsb2FkUgdwYXlsb2FkGkwKCFJlc3BvbnNlEkAKB3JhdGluZ3MYASADKAsyJi50aW1lYmFuay5zZXJ2aWNlcmF0aW5nLlRTZXJ2aWNlUmF0aW5nUgdyYXRpbmdz');
@$core.Deprecated('Use updateDescriptor instead')
const Update$json = const {
  '1': 'Update',
  '3': const [Update_Payload$json, Update_Request$json, Update_Response$json],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'rating_id', '3': 1, '4': 1, '5': 9, '10': 'ratingId'},
    const {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.Update.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.TServiceRating', '10': 'rating'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaOgoHUGF5bG9hZBIbCglyYXRpbmdfaWQYASABKAlSCHJhdGluZ0lkEhIKBGJvZHkYAiABKAlSBGJvZHkaSwoHUmVxdWVzdBJACgdwYXlsb2FkGAEgASgLMiYudGltZWJhbmsuc2VydmljZXJhdGluZy5VcGRhdGUuUGF5bG9hZFIHcGF5bG9hZBpKCghSZXNwb25zZRI+CgZyYXRpbmcYASABKAsyJi50aW1lYmFuay5zZXJ2aWNlcmF0aW5nLlRTZXJ2aWNlUmF0aW5nUgZyYXRpbmc=');
@$core.Deprecated('Use deleteDescriptor instead')
const Delete$json = const {
  '1': 'Delete',
  '3': const [Delete_Payload$json, Delete_Request$json, Delete_Response$json],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'rating_id', '3': 1, '4': 1, '5': 9, '10': 'ratingId'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerating.Delete.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `Delete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDescriptor = $convert.base64Decode('CgZEZWxldGUaJgoHUGF5bG9hZBIbCglyYXRpbmdfaWQYASABKAlSCHJhdGluZ0lkGksKB1JlcXVlc3QSQAoHcGF5bG9hZBgBIAEoCzImLnRpbWViYW5rLnNlcnZpY2VyYXRpbmcuRGVsZXRlLlBheWxvYWRSB3BheWxvYWQaCgoIUmVzcG9uc2U=');
