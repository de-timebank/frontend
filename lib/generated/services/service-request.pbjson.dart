///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use serviceRequestDataDescriptor instead')
const ServiceRequestData$json = const {
  '1': 'ServiceRequestData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'requestor', '3': 2, '4': 1, '5': 9, '10': 'requestor'},
    const {'1': 'provider', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'provider', '17': true},
    const {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData.Location', '10': 'location'},
    const {'1': 'state', '3': 5, '4': 1, '5': 14, '6': '.timebank.servicerequest.ServiceRequestData.State', '10': 'state'},
    const {'1': 'details', '3': 6, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData.Details', '10': 'details'},
    const {'1': 'media_attachments', '3': 7, '4': 3, '5': 9, '10': 'mediaAttachments'},
    const {'1': 'rate', '3': 8, '4': 1, '5': 2, '10': 'rate'},
    const {'1': 'applicants', '3': 9, '4': 3, '5': 9, '10': 'applicants'},
    const {'1': 'created_at', '3': 10, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 11, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'completed_at', '3': 12, '4': 1, '5': 9, '9': 1, '10': 'completedAt', '17': true},
    const {'1': 'category', '3': 13, '4': 1, '5': 9, '10': 'category'},
  ],
  '3': const [ServiceRequestData_Details$json, ServiceRequestData_Location$json],
  '4': const [ServiceRequestData_State$json],
  '8': const [
    const {'1': '_provider'},
    const {'1': '_completed_at'},
  ],
};

@$core.Deprecated('Use serviceRequestDataDescriptor instead')
const ServiceRequestData_Details$json = const {
  '1': 'Details',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

@$core.Deprecated('Use serviceRequestDataDescriptor instead')
const ServiceRequestData_Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'coordinate', '3': 2, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData.Location.Coordinate', '10': 'coordinate'},
  ],
  '3': const [ServiceRequestData_Location_Coordinate$json],
};

@$core.Deprecated('Use serviceRequestDataDescriptor instead')
const ServiceRequestData_Location_Coordinate$json = const {
  '1': 'Coordinate',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 9, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 9, '10': 'longitude'},
  ],
};

@$core.Deprecated('Use serviceRequestDataDescriptor instead')
const ServiceRequestData_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'PENDING', '2': 0},
    const {'1': 'ACCEPTED', '2': 1},
    const {'1': 'ONGOING', '2': 2},
    const {'1': 'COMPLETED', '2': 3},
    const {'1': 'ABORTED', '2': 4},
  ],
};

/// Descriptor for `ServiceRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceRequestDataDescriptor = $convert.base64Decode('ChJTZXJ2aWNlUmVxdWVzdERhdGESDgoCaWQYASABKAlSAmlkEhwKCXJlcXVlc3RvchgCIAEoCVIJcmVxdWVzdG9yEh8KCHByb3ZpZGVyGAMgASgJSABSCHByb3ZpZGVyiAEBElAKCGxvY2F0aW9uGAQgASgLMjQudGltZWJhbmsuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhLkxvY2F0aW9uUghsb2NhdGlvbhJHCgVzdGF0ZRgFIAEoDjIxLnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0LlNlcnZpY2VSZXF1ZXN0RGF0YS5TdGF0ZVIFc3RhdGUSTQoHZGV0YWlscxgGIAEoCzIzLnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0LlNlcnZpY2VSZXF1ZXN0RGF0YS5EZXRhaWxzUgdkZXRhaWxzEisKEW1lZGlhX2F0dGFjaG1lbnRzGAcgAygJUhBtZWRpYUF0dGFjaG1lbnRzEhIKBHJhdGUYCCABKAJSBHJhdGUSHgoKYXBwbGljYW50cxgJIAMoCVIKYXBwbGljYW50cxIdCgpjcmVhdGVkX2F0GAogASgJUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgLIAEoCVIJdXBkYXRlZEF0EiYKDGNvbXBsZXRlZF9hdBgMIAEoCUgBUgtjb21wbGV0ZWRBdIgBARIaCghjYXRlZ29yeRgNIAEoCVIIY2F0ZWdvcnkaQQoHRGV0YWlscxIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uGscBCghMb2NhdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEl8KCmNvb3JkaW5hdGUYAiABKAsyPy50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGEuTG9jYXRpb24uQ29vcmRpbmF0ZVIKY29vcmRpbmF0ZRpGCgpDb29yZGluYXRlEhoKCGxhdGl0dWRlGAEgASgJUghsYXRpdHVkZRIcCglsb25naXR1ZGUYAiABKAlSCWxvbmdpdHVkZSJLCgVTdGF0ZRILCgdQRU5ESU5HEAASDAoIQUNDRVBURUQQARILCgdPTkdPSU5HEAISDQoJQ09NUExFVEVEEAMSCwoHQUJPUlRFRBAEQgsKCV9wcm92aWRlckIPCg1fY29tcGxldGVkX2F0');
@$core.Deprecated('Use createDescriptor instead')
const Create$json = const {
  '1': 'Create',
  '3': const [Create_NewServiceRequestData$json, Create_Request$json, Create_Response$json],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_NewServiceRequestData$json = const {
  '1': 'NewServiceRequestData',
  '2': const [
    const {'1': 'details', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData.Details', '10': 'details'},
    const {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData.Location', '10': 'location'},
    const {'1': 'rate', '3': 3, '4': 1, '5': 2, '10': 'rate'},
    const {'1': 'media_attachments', '3': 4, '4': 3, '5': 9, '10': 'mediaAttachments'},
    const {'1': 'category', '3': 5, '4': 1, '5': 9, '10': 'category'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_data', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.Create.NewServiceRequestData', '10': 'requestData'},
    const {'1': 'requestor', '3': 2, '4': 1, '5': 9, '10': 'requestor'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData', '10': 'request'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUalQIKFU5ld1NlcnZpY2VSZXF1ZXN0RGF0YRJNCgdkZXRhaWxzGAEgASgLMjMudGltZWJhbmsuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhLkRldGFpbHNSB2RldGFpbHMSUAoIbG9jYXRpb24YAiABKAsyNC50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGEuTG9jYXRpb25SCGxvY2F0aW9uEhIKBHJhdGUYAyABKAJSBHJhdGUSKwoRbWVkaWFfYXR0YWNobWVudHMYBCADKAlSEG1lZGlhQXR0YWNobWVudHMSGgoIY2F0ZWdvcnkYBSABKAlSCGNhdGVnb3J5GoEBCgdSZXF1ZXN0ElgKDHJlcXVlc3RfZGF0YRgBIAEoCzI1LnRpbWViYW5rLnNlcnZpY2VyZXF1ZXN0LkNyZWF0ZS5OZXdTZXJ2aWNlUmVxdWVzdERhdGFSC3JlcXVlc3REYXRhEhwKCXJlcXVlc3RvchgCIAEoCVIJcmVxdWVzdG9yGlEKCFJlc3BvbnNlEkUKB3JlcXVlc3QYASABKAsyKy50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGFSB3JlcXVlc3Q=');
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
  ],
};

@$core.Deprecated('Use deleteDescriptor instead')
const Delete_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `Delete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDescriptor = $convert.base64Decode('CgZEZWxldGUaKAoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQaCgoIUmVzcG9uc2U=');
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
    const {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData', '10': 'requests'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaMQoHUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUaUwoIUmVzcG9uc2USRwoIcmVxdWVzdHMYASADKAsyKy50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGFSCHJlcXVlc3Rz');
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
  ],
};

@$core.Deprecated('Use getByIdDescriptor instead')
const GetById_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData', '10': 'request'},
  ],
};

/// Descriptor for `GetById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdDescriptor = $convert.base64Decode('CgdHZXRCeUlkGigKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkGlEKCFJlc3BvbnNlEkUKB3JlcXVlc3QYASABKAsyKy50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGFSB3JlcXVlc3Q=');
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
    const {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceRequestData', '10': 'request'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaPAoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSEgoEYm9keRgCIAEoCVIEYm9keRpRCghSZXNwb25zZRJFCgdyZXF1ZXN0GAEgASgLMisudGltZWJhbmsuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhUgdyZXF1ZXN0');
@$core.Deprecated('Use completeServiceDescriptor instead')
const CompleteService$json = const {
  '1': 'CompleteService',
  '3': const [CompleteService_Request$json, CompleteService_Response$json],
};

@$core.Deprecated('Use completeServiceDescriptor instead')
const CompleteService_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use completeServiceDescriptor instead')
const CompleteService_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `CompleteService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completeServiceDescriptor = $convert.base64Decode('Cg9Db21wbGV0ZVNlcnZpY2UaQQoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkGgoKCFJlc3BvbnNl');
@$core.Deprecated('Use serviceCommitmentDataDescriptor instead')
const ServiceCommitmentData$json = const {
  '1': 'ServiceCommitmentData',
  '2': const [
    const {'1': 'requestor', '3': 1, '4': 1, '5': 9, '10': 'requestor'},
    const {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 13, '10': 'amount'},
    const {'1': 'is_completed', '3': 4, '4': 1, '5': 8, '10': 'isCompleted'},
  ],
};

/// Descriptor for `ServiceCommitmentData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCommitmentDataDescriptor = $convert.base64Decode('ChVTZXJ2aWNlQ29tbWl0bWVudERhdGESHAoJcmVxdWVzdG9yGAEgASgJUglyZXF1ZXN0b3ISGgoIcHJvdmlkZXIYAiABKAlSCHByb3ZpZGVyEhYKBmFtb3VudBgDIAEoDVIGYW1vdW50EiEKDGlzX2NvbXBsZXRlZBgEIAEoCFILaXNDb21wbGV0ZWQ=');
@$core.Deprecated('Use getCommitmentDescriptor instead')
const GetCommitment$json = const {
  '1': 'GetCommitment',
  '3': const [GetCommitment_Request$json, GetCommitment_Response$json],
};

@$core.Deprecated('Use getCommitmentDescriptor instead')
const GetCommitment_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

@$core.Deprecated('Use getCommitmentDescriptor instead')
const GetCommitment_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'commitment', '3': 1, '4': 1, '5': 11, '6': '.timebank.servicerequest.ServiceCommitmentData', '10': 'commitment'},
  ],
};

/// Descriptor for `GetCommitment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCommitmentDescriptor = $convert.base64Decode('Cg1HZXRDb21taXRtZW50GigKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkGloKCFJlc3BvbnNlEk4KCmNvbW1pdG1lbnQYASABKAsyLi50aW1lYmFuay5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlQ29tbWl0bWVudERhdGFSCmNvbW1pdG1lbnQ=');
@$core.Deprecated('Use applyProviderDescriptor instead')
const ApplyProvider$json = const {
  '1': 'ApplyProvider',
  '3': const [ApplyProvider_Request$json, ApplyProvider_Response$json],
};

@$core.Deprecated('Use applyProviderDescriptor instead')
const ApplyProvider_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
  ],
};

@$core.Deprecated('Use applyProviderDescriptor instead')
const ApplyProvider_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `ApplyProvider`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyProviderDescriptor = $convert.base64Decode('Cg1BcHBseVByb3ZpZGVyGkQKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEhoKCHByb3ZpZGVyGAIgASgJUghwcm92aWRlchoKCghSZXNwb25zZQ==');
@$core.Deprecated('Use selectProviderDescriptor instead')
const SelectProvider$json = const {
  '1': 'SelectProvider',
  '3': const [SelectProvider_Request$json, SelectProvider_Response$json],
};

@$core.Deprecated('Use selectProviderDescriptor instead')
const SelectProvider_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
    const {'1': 'caller', '3': 3, '4': 1, '5': 9, '10': 'caller'},
  ],
};

@$core.Deprecated('Use selectProviderDescriptor instead')
const SelectProvider_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `SelectProvider`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selectProviderDescriptor = $convert.base64Decode('Cg5TZWxlY3RQcm92aWRlchpcCgdSZXF1ZXN0Eh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBIaCghwcm92aWRlchgCIAEoCVIIcHJvdmlkZXISFgoGY2FsbGVyGAMgASgJUgZjYWxsZXIaCgoIUmVzcG9uc2U=');
