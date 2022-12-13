///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use profileImageDescriptor instead')
const ProfileImage$json = const {
  '1': 'ProfileImage',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `ProfileImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileImageDescriptor = $convert.base64Decode('CgxQcm9maWxlSW1hZ2USEAoDdXJsGAEgASgJUgN1cmwSGwoJbWltZV90eXBlGAIgASgJUghtaW1lVHlwZQ==');
@$core.Deprecated('Use contactDescriptor instead')
const Contact$json = const {
  '1': 'Contact',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `Contact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactDescriptor = $convert.base64Decode('CgdDb250YWN0EhIKBHR5cGUYASABKAlSBHR5cGUSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use identificationNumberDescriptor instead')
const IdentificationNumber$json = const {
  '1': 'IdentificationNumber',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `IdentificationNumber`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List identificationNumberDescriptor = $convert.base64Decode('ChRJZGVudGlmaWNhdGlvbk51bWJlchISCgR0eXBlGAEgASgJUgR0eXBlEhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use newUserProfileDescriptor instead')
const NewUserProfile$json = const {
  '1': 'NewUserProfile',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'skills', '3': 2, '4': 3, '5': 9, '10': 'skills'},
    const {'1': 'contacts', '3': 3, '4': 3, '5': 11, '6': '.user.Contact', '10': 'contacts'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'identification_no', '3': 5, '4': 1, '5': 11, '6': '.user.IdentificationNumber', '10': 'identificationNo'},
  ],
};

/// Descriptor for `NewUserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newUserProfileDescriptor = $convert.base64Decode('Cg5OZXdVc2VyUHJvZmlsZRISCgRuYW1lGAEgASgJUgRuYW1lEhYKBnNraWxscxgCIAMoCVIGc2tpbGxzEikKCGNvbnRhY3RzGAMgAygLMg0udXNlci5Db250YWN0Ughjb250YWN0cxIWCgZnZW5kZXIYBCABKAlSBmdlbmRlchJHChFpZGVudGlmaWNhdGlvbl9ubxgFIAEoCzIaLnVzZXIuSWRlbnRpZmljYXRpb25OdW1iZXJSEGlkZW50aWZpY2F0aW9uTm8=');
@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = const {
  '1': 'UserProfile',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'skills', '3': 3, '4': 3, '5': 9, '10': 'skills'},
    const {'1': 'contacts', '3': 4, '4': 3, '5': 11, '6': '.user.Contact', '10': 'contacts'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 9, '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 9, '10': 'updatedAt'},
    const {'1': 'gender', '3': 7, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'identification_no', '3': 8, '4': 1, '5': 11, '6': '.user.IdentificationNumber', '10': 'identificationNo'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode('CgtVc2VyUHJvZmlsZRIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIWCgZza2lsbHMYAyADKAlSBnNraWxscxIpCghjb250YWN0cxgEIAMoCzINLnVzZXIuQ29udGFjdFIIY29udGFjdHMSHQoKY3JlYXRlZF9hdBgFIAEoCVIJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBiABKAlSCXVwZGF0ZWRBdBIWCgZnZW5kZXIYByABKAlSBmdlbmRlchJHChFpZGVudGlmaWNhdGlvbl9ubxgIIAEoCzIaLnVzZXIuSWRlbnRpZmljYXRpb25OdW1iZXJSEGlkZW50aWZpY2F0aW9uTm8=');
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
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.user.UserProfile', '10': 'users'},
  ],
};

/// Descriptor for `Get`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDescriptor = $convert.base64Decode('CgNHZXQaMQoHUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUaMwoIUmVzcG9uc2USJwoFdXNlcnMYASADKAsyES51c2VyLlVzZXJQcm9maWxlUgV1c2Vycw==');
@$core.Deprecated('Use getByIdDescriptor instead')
const GetById$json = const {
  '1': 'GetById',
  '3': const [GetById_Request$json, GetById_Response$json],
};

@$core.Deprecated('Use getByIdDescriptor instead')
const GetById_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use getByIdDescriptor instead')
const GetById_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.UserProfile', '10': 'user'},
  ],
};

/// Descriptor for `GetById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdDescriptor = $convert.base64Decode('CgdHZXRCeUlkGiIKB1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkGjEKCFJlc3BvbnNlEiUKBHVzZXIYASABKAsyES51c2VyLlVzZXJQcm9maWxlUgR1c2Vy');
@$core.Deprecated('Use updateDescriptor instead')
const Update$json = const {
  '1': 'Update',
  '3': const [Update_Request$json, Update_Response$json],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
  ],
};

@$core.Deprecated('Use updateDescriptor instead')
const Update_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.UserProfile', '10': 'user'},
  ],
};

/// Descriptor for `Update`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDescriptor = $convert.base64Decode('CgZVcGRhdGUaNgoHUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSEgoEYm9keRgCIAEoCVIEYm9keRoxCghSZXNwb25zZRIlCgR1c2VyGAEgASgLMhEudXNlci5Vc2VyUHJvZmlsZVIEdXNlcg==');
@$core.Deprecated('Use getRatingDescriptor instead')
const GetRating$json = const {
  '1': 'GetRating',
  '3': const [GetRating_Request$json, GetRating_Response$json],
};

@$core.Deprecated('Use getRatingDescriptor instead')
const GetRating_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use getRatingDescriptor instead')
const GetRating_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'average', '3': 1, '4': 1, '5': 5, '10': 'average'},
    const {'1': 'ratings', '3': 2, '4': 3, '5': 11, '6': '.rating.RatingData', '10': 'ratings'},
  ],
};

/// Descriptor for `GetRating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRatingDescriptor = $convert.base64Decode('CglHZXRSYXRpbmcaIgoHUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQaUgoIUmVzcG9uc2USGAoHYXZlcmFnZRgBIAEoBVIHYXZlcmFnZRIsCgdyYXRpbmdzGAIgAygLMhIucmF0aW5nLlJhdGluZ0RhdGFSB3JhdGluZ3M=');
@$core.Deprecated('Use getCreditBalanceDescriptor instead')
const GetCreditBalance$json = const {
  '1': 'GetCreditBalance',
  '3': const [GetCreditBalance_Request$json, GetCreditBalance_Response$json],
};

@$core.Deprecated('Use getCreditBalanceDescriptor instead')
const GetCreditBalance_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use getCreditBalanceDescriptor instead')
const GetCreditBalance_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 2, '10': 'total'},
    const {'1': 'reserved', '3': 2, '4': 1, '5': 2, '10': 'reserved'},
  ],
};

/// Descriptor for `GetCreditBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCreditBalanceDescriptor = $convert.base64Decode('ChBHZXRDcmVkaXRCYWxhbmNlGiIKB1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkGjwKCFJlc3BvbnNlEhQKBXRvdGFsGAEgASgCUgV0b3RhbBIaCghyZXNlcnZlZBgCIAEoAlIIcmVzZXJ2ZWQ=');
@$core.Deprecated('Use profileSummaryDescriptor instead')
const ProfileSummary$json = const {
  '1': 'ProfileSummary',
  '2': const [
    const {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.user.UserProfile', '10': 'profile'},
    const {'1': 'rating', '3': 2, '4': 1, '5': 11, '6': '.user.ProfileSummary.Rating', '10': 'rating'},
  ],
  '3': const [ProfileSummary_RatingSummary$json, ProfileSummary_Rating$json],
};

@$core.Deprecated('Use profileSummaryDescriptor instead')
const ProfileSummary_RatingSummary$json = const {
  '1': 'RatingSummary',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'avg', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'avg', '17': true},
  ],
  '8': const [
    const {'1': '_avg'},
  ],
};

@$core.Deprecated('Use profileSummaryDescriptor instead')
const ProfileSummary_Rating$json = const {
  '1': 'Rating',
  '2': const [
    const {'1': 'as_provider', '3': 1, '4': 1, '5': 11, '6': '.user.ProfileSummary.RatingSummary', '10': 'asProvider'},
    const {'1': 'as_requestor', '3': 2, '4': 1, '5': 11, '6': '.user.ProfileSummary.RatingSummary', '10': 'asRequestor'},
  ],
};

/// Descriptor for `ProfileSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileSummaryDescriptor = $convert.base64Decode('Cg5Qcm9maWxlU3VtbWFyeRIrCgdwcm9maWxlGAEgASgLMhEudXNlci5Vc2VyUHJvZmlsZVIHcHJvZmlsZRIzCgZyYXRpbmcYAiABKAsyGy51c2VyLlByb2ZpbGVTdW1tYXJ5LlJhdGluZ1IGcmF0aW5nGkQKDVJhdGluZ1N1bW1hcnkSFAoFY291bnQYASABKAVSBWNvdW50EhUKA2F2ZxgCIAEoAkgAUgNhdmeIAQFCBgoEX2F2ZxqUAQoGUmF0aW5nEkMKC2FzX3Byb3ZpZGVyGAEgASgLMiIudXNlci5Qcm9maWxlU3VtbWFyeS5SYXRpbmdTdW1tYXJ5Ugphc1Byb3ZpZGVyEkUKDGFzX3JlcXVlc3RvchgCIAEoCzIiLnVzZXIuUHJvZmlsZVN1bW1hcnkuUmF0aW5nU3VtbWFyeVILYXNSZXF1ZXN0b3I=');
@$core.Deprecated('Use getProfileDescriptor instead')
const GetProfile$json = const {
  '1': 'GetProfile',
  '3': const [GetProfile_Request$json, GetProfile_Response$json],
};

@$core.Deprecated('Use getProfileDescriptor instead')
const GetProfile_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

@$core.Deprecated('Use getProfileDescriptor instead')
const GetProfile_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.ProfileSummary', '10': 'user'},
  ],
};

/// Descriptor for `GetProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileDescriptor = $convert.base64Decode('CgpHZXRQcm9maWxlGiIKB1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkGjQKCFJlc3BvbnNlEigKBHVzZXIYASABKAsyFC51c2VyLlByb2ZpbGVTdW1tYXJ5UgR1c2Vy');
