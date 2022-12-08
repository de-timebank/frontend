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
    const {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData.Location', '10': 'location'},
    const {'1': 'state', '3': 5, '4': 1, '5': 14, '6': '.servicerequest.ServiceRequestData.State', '10': 'state'},
    const {'1': 'title', '3': 6, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'media_attachments', '3': 8, '4': 3, '5': 9, '10': 'mediaAttachments'},
    const {'1': 'rate', '3': 9, '4': 1, '5': 2, '10': 'rate'},
    const {'1': 'applicants', '3': 10, '4': 3, '5': 9, '10': 'applicants'},
    const {'1': 'created_at', '3': 11, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 12, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'completed_at', '3': 13, '4': 1, '5': 9, '9': 1, '10': 'completedAt', '17': true},
    const {'1': 'category', '3': 14, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'started_at', '3': 15, '4': 1, '5': 9, '10': 'startedAt'},
    const {'1': 'time_limit', '3': 16, '4': 1, '5': 2, '10': 'timeLimit'},
    const {'1': 'actual_payment', '3': 17, '4': 1, '5': 2, '9': 2, '10': 'actualPayment', '17': true},
    const {'1': 'date', '3': 18, '4': 1, '5': 9, '10': 'date'},
  ],
  '3': const [ServiceRequestData_Details$json, ServiceRequestData_Location$json],
  '4': const [ServiceRequestData_State$json],
  '8': const [
    const {'1': '_provider'},
    const {'1': '_completed_at'},
    const {'1': '_actual_payment'},
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
    const {'1': 'coordinate', '3': 2, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData.Location.Coordinate', '10': 'coordinate'},
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
final $typed_data.Uint8List serviceRequestDataDescriptor = $convert.base64Decode('ChJTZXJ2aWNlUmVxdWVzdERhdGESDgoCaWQYASABKAlSAmlkEhwKCXJlcXVlc3RvchgCIAEoCVIJcmVxdWVzdG9yEh8KCHByb3ZpZGVyGAMgASgJSABSCHByb3ZpZGVyiAEBEkcKCGxvY2F0aW9uGAQgASgLMisuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhLkxvY2F0aW9uUghsb2NhdGlvbhI+CgVzdGF0ZRgFIAEoDjIoLnNlcnZpY2VyZXF1ZXN0LlNlcnZpY2VSZXF1ZXN0RGF0YS5TdGF0ZVIFc3RhdGUSFAoFdGl0bGUYBiABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAcgASgJUgtkZXNjcmlwdGlvbhIrChFtZWRpYV9hdHRhY2htZW50cxgIIAMoCVIQbWVkaWFBdHRhY2htZW50cxISCgRyYXRlGAkgASgCUgRyYXRlEh4KCmFwcGxpY2FudHMYCiADKAlSCmFwcGxpY2FudHMSHQoKY3JlYXRlZF9hdBgLIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYDCABKAlSCXVwZGF0ZWRBdBImCgxjb21wbGV0ZWRfYXQYDSABKAlIAVILY29tcGxldGVkQXSIAQESGgoIY2F0ZWdvcnkYDiABKAlSCGNhdGVnb3J5Eh0KCnN0YXJ0ZWRfYXQYDyABKAlSCXN0YXJ0ZWRBdBIdCgp0aW1lX2xpbWl0GBAgASgCUgl0aW1lTGltaXQSKgoOYWN0dWFsX3BheW1lbnQYESABKAJIAlINYWN0dWFsUGF5bWVudIgBARISCgRkYXRlGBIgASgJUgRkYXRlGkEKB0RldGFpbHMSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhq+AQoITG9jYXRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRJWCgpjb29yZGluYXRlGAIgASgLMjYuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhLkxvY2F0aW9uLkNvb3JkaW5hdGVSCmNvb3JkaW5hdGUaRgoKQ29vcmRpbmF0ZRIaCghsYXRpdHVkZRgBIAEoCVIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgASgJUglsb25naXR1ZGUiSwoFU3RhdGUSCwoHUEVORElORxAAEgwKCEFDQ0VQVEVEEAESCwoHT05HT0lORxACEg0KCUNPTVBMRVRFRBADEgsKB0FCT1JURUQQBEILCglfcHJvdmlkZXJCDwoNX2NvbXBsZXRlZF9hdEIRCg9fYWN0dWFsX3BheW1lbnQ=');
@$core.Deprecated('Use createDescriptor instead')
const Create$json = const {
  '1': 'Create',
  '3': const [Create_NewServiceRequestData$json, Create_Request$json, Create_Response$json],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_NewServiceRequestData$json = const {
  '1': 'NewServiceRequestData',
  '2': const [
    const {'1': 'details', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData.Details', '10': 'details'},
    const {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData.Location', '10': 'location'},
    const {'1': 'rate', '3': 3, '4': 1, '5': 2, '10': 'rate'},
    const {'1': 'media_attachments', '3': 4, '4': 3, '5': 9, '10': 'mediaAttachments'},
    const {'1': 'category', '3': 5, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'time_limit', '3': 6, '4': 1, '5': 2, '10': 'timeLimit'},
    const {'1': 'date', '3': 7, '4': 1, '5': 9, '10': 'date'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_data', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.Create.NewServiceRequestData', '10': 'requestData'},
    const {'1': 'requestor', '3': 2, '4': 1, '5': 9, '10': 'requestor'},
  ],
};

@$core.Deprecated('Use createDescriptor instead')
const Create_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData', '10': 'request'},
  ],
};

/// Descriptor for `Create`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDescriptor = $convert.base64Decode('CgZDcmVhdGUatgIKFU5ld1NlcnZpY2VSZXF1ZXN0RGF0YRJECgdkZXRhaWxzGAEgASgLMiouc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhLkRldGFpbHNSB2RldGFpbHMSRwoIbG9jYXRpb24YAiABKAsyKy5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGEuTG9jYXRpb25SCGxvY2F0aW9uEhIKBHJhdGUYAyABKAJSBHJhdGUSKwoRbWVkaWFfYXR0YWNobWVudHMYBCADKAlSEG1lZGlhQXR0YWNobWVudHMSGgoIY2F0ZWdvcnkYBSABKAlSCGNhdGVnb3J5Eh0KCnRpbWVfbGltaXQYBiABKAJSCXRpbWVMaW1pdBISCgRkYXRlGAcgASgJUgRkYXRlGngKB1JlcXVlc3QSTwoMcmVxdWVzdF9kYXRhGAEgASgLMiwuc2VydmljZXJlcXVlc3QuQ3JlYXRlLk5ld1NlcnZpY2VSZXF1ZXN0RGF0YVILcmVxdWVzdERhdGESHAoJcmVxdWVzdG9yGAIgASgJUglyZXF1ZXN0b3IaSAoIUmVzcG9uc2USPAoHcmVxdWVzdBgBIAEoCzIiLnNlcnZpY2VyZXF1ZXN0LlNlcnZpY2VSZXF1ZXN0RGF0YVIHcmVxdWVzdA==');
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
    const {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.servicerequest.ServiceRequestData', '10': 'requests'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaMQoHUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUaSgoIUmVzcG9uc2USPgoIcmVxdWVzdHMYASADKAsyIi5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGFSCHJlcXVlc3Rz');
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
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData', '10': 'request'},
    const {'1': 'requestor', '3': 2, '4': 1, '5': 11, '6': '.user.UserProfile', '10': 'requestor'},
    const {'1': 'provider', '3': 3, '4': 1, '5': 11, '6': '.user.UserProfile', '10': 'provider'},
  ],
};

/// Descriptor for `GetById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdDescriptor = $convert.base64Decode('CgdHZXRCeUlkGigKB1JlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkGqgBCghSZXNwb25zZRI8CgdyZXF1ZXN0GAEgASgLMiIuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhUgdyZXF1ZXN0Ei8KCXJlcXVlc3RvchgCIAEoCzIRLnVzZXIuVXNlclByb2ZpbGVSCXJlcXVlc3RvchItCghwcm92aWRlchgDIAEoCzIRLnVzZXIuVXNlclByb2ZpbGVSCHByb3ZpZGVy');
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
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.ServiceRequestData', '10': 'request'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaPAoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSEgoEYm9keRgCIAEoCVIEYm9keRpICghSZXNwb25zZRI8CgdyZXF1ZXN0GAEgASgLMiIuc2VydmljZXJlcXVlc3QuU2VydmljZVJlcXVlc3REYXRhUgdyZXF1ZXN0');
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
@$core.Deprecated('Use getAvailableDescriptor instead')
const GetAvailable$json = const {
  '1': 'GetAvailable',
  '3': const [GetAvailable_Request$json, GetAvailable_Response$json],
};

@$core.Deprecated('Use getAvailableDescriptor instead')
const GetAvailable_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.misc.Filter', '10': 'filter'},
    const {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.misc.Page', '10': 'page'},
  ],
};

@$core.Deprecated('Use getAvailableDescriptor instead')
const GetAvailable_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.servicerequest.ServiceRequestData', '10': 'requests'},
  ],
};

/// Descriptor for `GetAvailable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAvailableDescriptor = $convert.base64Decode('CgxHZXRBdmFpbGFibGUaTwoHUmVxdWVzdBIkCgZmaWx0ZXIYASABKAsyDC5taXNjLkZpbHRlclIGZmlsdGVyEh4KBHBhZ2UYAiABKAsyCi5taXNjLlBhZ2VSBHBhZ2UaSgoIUmVzcG9uc2USPgoIcmVxdWVzdHMYASADKAsyIi5zZXJ2aWNlcmVxdWVzdC5TZXJ2aWNlUmVxdWVzdERhdGFSCHJlcXVlc3Rz');
@$core.Deprecated('Use startServiceDescriptor instead')
const StartService$json = const {
  '1': 'StartService',
  '3': const [StartService_Request$json, StartService_Response$json],
};

@$core.Deprecated('Use startServiceDescriptor instead')
const StartService_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use startServiceDescriptor instead')
const StartService_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `StartService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startServiceDescriptor = $convert.base64Decode('CgxTdGFydFNlcnZpY2UaQQoHUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklkGgoKCFJlc3BvbnNl');
@$core.Deprecated('Use getSummaryForUserDescriptor instead')
const GetSummaryForUser$json = const {
  '1': 'GetSummaryForUser',
  '3': const [GetSummaryForUser_SummaryCount$json, GetSummaryForUser_Request$json, GetSummaryForUser_Response$json],
};

@$core.Deprecated('Use getSummaryForUserDescriptor instead')
const GetSummaryForUser_SummaryCount$json = const {
  '1': 'SummaryCount',
  '2': const [
    const {'1': 'as_requestor', '3': 1, '4': 1, '5': 5, '10': 'asRequestor'},
    const {'1': 'as_provider', '3': 2, '4': 1, '5': 5, '10': 'asProvider'},
  ],
};

@$core.Deprecated('Use getSummaryForUserDescriptor instead')
const GetSummaryForUser_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use getSummaryForUserDescriptor instead')
const GetSummaryForUser_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'pending', '3': 1, '4': 1, '5': 11, '6': '.servicerequest.GetSummaryForUser.SummaryCount', '10': 'pending'},
    const {'1': 'accepted', '3': 2, '4': 1, '5': 11, '6': '.servicerequest.GetSummaryForUser.SummaryCount', '10': 'accepted'},
    const {'1': 'ongoing', '3': 3, '4': 1, '5': 11, '6': '.servicerequest.GetSummaryForUser.SummaryCount', '10': 'ongoing'},
    const {'1': 'completed', '3': 4, '4': 1, '5': 11, '6': '.servicerequest.GetSummaryForUser.SummaryCount', '10': 'completed'},
  ],
};

/// Descriptor for `GetSummaryForUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSummaryForUserDescriptor = $convert.base64Decode('ChFHZXRTdW1tYXJ5Rm9yVXNlchpSCgxTdW1tYXJ5Q291bnQSIQoMYXNfcmVxdWVzdG9yGAEgASgFUgthc1JlcXVlc3RvchIfCgthc19wcm92aWRlchgCIAEoBVIKYXNQcm92aWRlchoiCgdSZXF1ZXN0EhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBq4AgoIUmVzcG9uc2USSAoHcGVuZGluZxgBIAEoCzIuLnNlcnZpY2VyZXF1ZXN0LkdldFN1bW1hcnlGb3JVc2VyLlN1bW1hcnlDb3VudFIHcGVuZGluZxJKCghhY2NlcHRlZBgCIAEoCzIuLnNlcnZpY2VyZXF1ZXN0LkdldFN1bW1hcnlGb3JVc2VyLlN1bW1hcnlDb3VudFIIYWNjZXB0ZWQSSAoHb25nb2luZxgDIAEoCzIuLnNlcnZpY2VyZXF1ZXN0LkdldFN1bW1hcnlGb3JVc2VyLlN1bW1hcnlDb3VudFIHb25nb2luZxJMCgljb21wbGV0ZWQYBCABKAsyLi5zZXJ2aWNlcmVxdWVzdC5HZXRTdW1tYXJ5Rm9yVXNlci5TdW1tYXJ5Q291bnRSCWNvbXBsZXRlZA==');
