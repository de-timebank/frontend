///
//  Generated code. Do not modify.
//  source: collection/rating.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ratingDataDescriptor instead')
const RatingData$json = const {
  '1': 'RatingData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'recipient', '3': 3, '4': 1, '5': 9, '10': 'recipient'},
    const {'1': 'value', '3': 4, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'created_at', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 7, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'request_id', '3': 8, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'rating_for', '3': 9, '4': 1, '5': 9, '10': 'ratingFor'},
  ],
};

/// Descriptor for `RatingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratingDataDescriptor = $convert.base64Decode('CgpSYXRpbmdEYXRhEg4KAmlkGAEgASgJUgJpZBIWCgZhdXRob3IYAiABKAlSBmF1dGhvchIcCglyZWNpcGllbnQYAyABKAlSCXJlY2lwaWVudBIUCgV2YWx1ZRgEIAEoBVIFdmFsdWUSGAoHY29tbWVudBgFIAEoCVIHY29tbWVudBIdCgpjcmVhdGVkX2F0GAYgASgJUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgHIAEoCVIJdXBkYXRlZEF0Eh0KCnJlcXVlc3RfaWQYCCABKAlSCXJlcXVlc3RJZBIdCgpyYXRpbmdfZm9yGAkgASgJUglyYXRpbmdGb3I=');
@$core.Deprecated('Use createDescriptor instead')
const Create$json = const {
  '1': 'Create',
  '3': const [Create_NewRatingData$json, Create_Request$json, Create_Response$json],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_NewRatingData$json = const {
  '1': 'NewRatingData',
  '2': const [
    const {'1': 'author', '3': 1, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'request_id', '3': 4, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.timebank.rating.Create.NewRatingData', '10': 'rating'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.timebank.rating.RatingData', '10': 'rating'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUadgoNTmV3UmF0aW5nRGF0YRIWCgZhdXRob3IYASABKAlSBmF1dGhvchIUCgV2YWx1ZRgCIAEoBVIFdmFsdWUSGAoHY29tbWVudBgDIAEoCVIHY29tbWVudBIdCgpyZXF1ZXN0X2lkGAQgASgJUglyZXF1ZXN0SWQaSAoHUmVxdWVzdBI9CgZyYXRpbmcYASABKAsyJS50aW1lYmFuay5yYXRpbmcuQ3JlYXRlLk5ld1JhdGluZ0RhdGFSBnJhdGluZxo/CghSZXNwb25zZRIzCgZyYXRpbmcYASABKAsyGy50aW1lYmFuay5yYXRpbmcuUmF0aW5nRGF0YVIGcmF0aW5n');
@$core.Deprecated('Use getDescriptor instead')
const Get$json = const {
  '1': 'Get',
  '3': const [Get_Request$json, Get_Response$json],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'ratings', '3': 1, '4': 3, '5': 11, '6': '.timebank.rating.RatingData', '10': 'ratings'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaMQoHUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUaQQoIUmVzcG9uc2USNQoHcmF0aW5ncxgBIAMoCzIbLnRpbWViYW5rLnJhdGluZy5SYXRpbmdEYXRhUgdyYXRpbmdz');
@$core.Deprecated('Use updateDescriptor instead')
const Update$json = const {
  '1': 'Update',
  '3': const [Update_Request$json, Update_Response$json],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'rating_id', '3': 1, '4': 1, '5': 9, '10': 'ratingId'},
    const {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.timebank.rating.RatingData', '10': 'rating'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaOgoHUmVxdWVzdBIbCglyYXRpbmdfaWQYASABKAlSCHJhdGluZ0lkEhIKBGJvZHkYAiABKAlSBGJvZHkaPwoIUmVzcG9uc2USMwoGcmF0aW5nGAEgASgLMhsudGltZWJhbmsucmF0aW5nLlJhdGluZ0RhdGFSBnJhdGluZw==');
@$core.Deprecated('Use deleteDescriptor instead')
const Delete$json = const {
  '1': 'Delete',
  '3': const [Delete_Request$json, Delete_Response$json],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'rating_id', '3': 1, '4': 1, '5': 9, '10': 'ratingId'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `Delete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDescriptor = $convert.base64Decode('CgZEZWxldGUaJgoHUmVxdWVzdBIbCglyYXRpbmdfaWQYASABKAlSCHJhdGluZ0lkGgoKCFJlc3BvbnNl');
