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
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'rating_for', '3': 2, '4': 1, '5': 9, '10': 'ratingFor'},
    const {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'recipient', '3': 4, '4': 1, '5': 9, '10': 'recipient'},
    const {'1': 'value', '3': 5, '4': 1, '5': 5, '10': 'value'},
    const {'1': 'comment', '3': 6, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 8, '4': 1, '5': 9, '10': 'updatedAt'},
  ],
};

/// Descriptor for `RatingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratingDataDescriptor = $convert.base64Decode('CgpSYXRpbmdEYXRhEh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBIdCgpyYXRpbmdfZm9yGAIgASgJUglyYXRpbmdGb3ISFgoGYXV0aG9yGAMgASgJUgZhdXRob3ISHAoJcmVjaXBpZW50GAQgASgJUglyZWNpcGllbnQSFAoFdmFsdWUYBSABKAVSBXZhbHVlEhgKB2NvbW1lbnQYBiABKAlSB2NvbW1lbnQSHQoKY3JlYXRlZF9hdBgHIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYCCABKAlSCXVwZGF0ZWRBdA==');
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
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.rating.Create.NewRatingData', '10': 'rating'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.rating.RatingData', '10': 'rating'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUadgoNTmV3UmF0aW5nRGF0YRIWCgZhdXRob3IYASABKAlSBmF1dGhvchIUCgV2YWx1ZRgCIAEoBVIFdmFsdWUSGAoHY29tbWVudBgDIAEoCVIHY29tbWVudBIdCgpyZXF1ZXN0X2lkGAQgASgJUglyZXF1ZXN0SWQaPwoHUmVxdWVzdBI0CgZyYXRpbmcYASABKAsyHC5yYXRpbmcuQ3JlYXRlLk5ld1JhdGluZ0RhdGFSBnJhdGluZxo2CghSZXNwb25zZRIqCgZyYXRpbmcYASABKAsyEi5yYXRpbmcuUmF0aW5nRGF0YVIGcmF0aW5n');
@$core.Deprecated('Use getForRequestDescriptor instead')
const GetForRequest$json = const {
  '1': 'GetForRequest',
  '3': const [GetForRequest_Request$json, GetForRequest_Response$json],
};

@$core.Deprecated('Use getForRequestDescriptor instead')
const GetForRequest_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

@$core.Deprecated('Use getForRequestDescriptor instead')
const GetForRequest_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'ratings', '3': 1, '4': 3, '5': 11, '6': '.rating.RatingData', '10': 'ratings'},
  ],
};

/// Descriptor for `GetForRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getForRequestDescriptor = $convert.base64Decode('Cg1HZXRGb3JSZXF1ZXN0GigKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkGjgKCFJlc3BvbnNlEiwKB3JhdGluZ3MYASADKAsyEi5yYXRpbmcuUmF0aW5nRGF0YVIHcmF0aW5ncw==');
@$core.Deprecated('Use updateDescriptor instead')
const Update$json = const {
  '1': 'Update',
  '3': const [Update_Request$json, Update_Response$json],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'rating_for', '3': 2, '4': 1, '5': 9, '10': 'ratingFor'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.rating.RatingData', '10': 'rating'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaWwoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSHQoKcmF0aW5nX2ZvchgCIAEoCVIJcmF0aW5nRm9yEhIKBGJvZHkYAyABKAlSBGJvZHkaNgoIUmVzcG9uc2USKgoGcmF0aW5nGAEgASgLMhIucmF0aW5nLlJhdGluZ0RhdGFSBnJhdGluZw==');
@$core.Deprecated('Use deleteDescriptor instead')
const Delete$json = const {
  '1': 'Delete',
  '3': const [Delete_Request$json, Delete_Response$json],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'rating_for', '3': 2, '4': 1, '5': 9, '10': 'ratingFor'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `Delete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDescriptor = $convert.base64Decode('CgZEZWxldGUaRwoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSHQoKcmF0aW5nX2ZvchgCIAEoCVIJcmF0aW5nRm9yGgoKCFJlc3BvbnNl');
@$core.Deprecated('Use getByIdDescriptor instead')
const GetById$json = const {
  '1': 'GetById',
  '3': const [GetById_Request$json, GetById_Response$json],
};

@$core.Deprecated('Use getByIdDescriptor instead')
const GetById_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'rating_for', '3': 2, '4': 1, '5': 9, '10': 'ratingFor'},
  ],
};

@$core.Deprecated('Use getByIdDescriptor instead')
const GetById_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'rating', '3': 1, '4': 1, '5': 11, '6': '.rating.RatingData', '10': 'rating'},
  ],
};

/// Descriptor for `GetById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdDescriptor = $convert.base64Decode('CgdHZXRCeUlkGkcKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEh0KCnJhdGluZ19mb3IYAiABKAlSCXJhdGluZ0Zvcho2CghSZXNwb25zZRIqCgZyYXRpbmcYASABKAsyEi5yYXRpbmcuUmF0aW5nRGF0YVIGcmF0aW5n');
