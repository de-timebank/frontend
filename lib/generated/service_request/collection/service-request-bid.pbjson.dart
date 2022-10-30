///
//  Generated code. Do not modify.
//  source: collection/service-request-bid.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use tServiceRequestBidDescriptor instead')
const TServiceRequestBid$json = const {
  '1': 'TServiceRequestBid',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'bidder', '3': 2, '4': 1, '5': 9, '10': 'bidder'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 2, '10': 'amount'},
    const {'1': 'request_id', '3': 4, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `TServiceRequestBid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tServiceRequestBidDescriptor = $convert.base64Decode('ChJUU2VydmljZVJlcXVlc3RCaWQSDgoCaWQYASABKAlSAmlkEhYKBmJpZGRlchgCIAEoCVIGYmlkZGVyEhYKBmFtb3VudBgDIAEoAlIGYW1vdW50Eh0KCnJlcXVlc3RfaWQYBCABKAlSCXJlcXVlc3RJZBIdCgpjcmVhdGVkX2F0GAUgASgJUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use createDescriptor instead')
const Create$json = const {
  '1': 'Create',
  '3': const [Create_Payload$json, Create_Request$json, Create_Response$json],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 2, '10': 'amount'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequestbid.Create.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'bid', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequestbid.TServiceRequestBid', '10': 'bid'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUaWQoHUGF5bG9hZBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkEhYKBmFtb3VudBgDIAEoAlIGYW1vdW50Gk8KB1JlcXVlc3QSRAoHcGF5bG9hZBgBIAEoCzIqLnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0YmlkLkNyZWF0ZS5QYXlsb2FkUgdwYXlsb2FkGkwKCFJlc3BvbnNlEkAKA2JpZBgBIAEoCzIuLnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0YmlkLlRTZXJ2aWNlUmVxdWVzdEJpZFIDYmlk');
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
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequestbid.Get.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use getDescriptor instead')
const Get_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'bids', '3': 1, '4': 3, '5': 11, '6': '.timebank.servicerequestbid.TServiceRequestBid', '10': 'bids'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaOQoHUGF5bG9hZBIWCgZjb2x1bW4YASABKAlSBmNvbHVtbhIWCgZmaWx0ZXIYAiABKAlSBmZpbHRlchpMCgdSZXF1ZXN0EkEKB3BheWxvYWQYASABKAsyJy50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdGJpZC5HZXQuUGF5bG9hZFIHcGF5bG9hZBpOCghSZXNwb25zZRJCCgRiaWRzGAEgAygLMi4udGltZWJhbmsuc2VydmljZXJlcXVlc3RiaWQuVFNlcnZpY2VSZXF1ZXN0QmlkUgRiaWRz');
@$core.Deprecated('Use deleteDescriptor instead')
const Delete$json = const {
  '1': 'Delete',
  '3': const [Delete_Payload$json, Delete_Request$json, Delete_Response$json],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'bid_id', '3': 1, '4': 1, '5': 9, '10': 'bidId'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequestbid.Delete.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `Delete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDescriptor = $convert.base64Decode('CgZEZWxldGUaIAoHUGF5bG9hZBIVCgZiaWRfaWQYASABKAlSBWJpZElkGk8KB1JlcXVlc3QSRAoHcGF5bG9hZBgBIAEoCzIqLnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0YmlkLkRlbGV0ZS5QYXlsb2FkUgdwYXlsb2FkGgoKCFJlc3BvbnNl');
