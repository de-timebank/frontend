///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signInDescriptor instead')
const SignIn$json = const {
  '1': 'SignIn',
  '3': const [SignIn_Payload$json, SignIn_Request$json, SignIn_Response$json],
};

@$core.Deprecated('Use signInDescriptor instead')
const SignIn_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use signInDescriptor instead')
const SignIn_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.auth.SignIn.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use signInDescriptor instead')
const SignIn_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'auth_token', '3': 2, '4': 1, '5': 9, '10': 'authToken'},
  ],
};

/// Descriptor for `SignIn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInDescriptor = $convert.base64Decode('CgZTaWduSW4aOwoHUGF5bG9hZBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkGjkKB1JlcXVlc3QSLgoHcGF5bG9hZBgBIAEoCzIULmF1dGguU2lnbkluLlBheWxvYWRSB3BheWxvYWQaQgoIUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEh0KCmF1dGhfdG9rZW4YAiABKAlSCWF1dGhUb2tlbg==');
@$core.Deprecated('Use signUpDescriptor instead')
const SignUp$json = const {
  '1': 'SignUp',
  '3': const [SignUp_MatricCard$json, SignUp_Payload$json, SignUp_Request$json, SignUp_Response$json],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_MatricCard$json = const {
  '1': 'MatricCard',
  '2': const [
    const {'1': 'front', '3': 1, '4': 1, '5': 12, '10': 'front'},
    const {'1': 'back', '3': 2, '4': 1, '5': 12, '10': 'back'},
  ],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'matric_number', '3': 5, '4': 1, '5': 9, '10': 'matricNumber'},
    const {'1': 'matric_card', '3': 6, '4': 1, '5': 11, '6': '.auth.SignUp.MatricCard', '10': 'matricCard'},
  ],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.auth.SignUp.Payload', '10': 'payload'},
  ],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_Response$json = const {
  '1': 'Response',
};

/// Descriptor for `SignUp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpDescriptor = $convert.base64Decode('CgZTaWduVXAaNgoKTWF0cmljQ2FyZBIUCgVmcm9udBgBIAEoDFIFZnJvbnQSEgoEYmFjaxgCIAEoDFIEYmFjaxrRAQoHUGF5bG9hZBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkEhIKBG5hbWUYAyABKAlSBG5hbWUSIQoMcGhvbmVfbnVtYmVyGAQgASgJUgtwaG9uZU51bWJlchIjCg1tYXRyaWNfbnVtYmVyGAUgASgJUgxtYXRyaWNOdW1iZXISOAoLbWF0cmljX2NhcmQYBiABKAsyFy5hdXRoLlNpZ25VcC5NYXRyaWNDYXJkUgptYXRyaWNDYXJkGjkKB1JlcXVlc3QSLgoHcGF5bG9hZBgBIAEoCzIULmF1dGguU2lnblVwLlBheWxvYWRSB3BheWxvYWQaCgoIUmVzcG9uc2U=');
