///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use signUpDescriptor instead')
const SignUp$json = const {
  '1': 'SignUp',
  '3': const [SignUp_Request$json, SignUp_Response$json],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'profile', '3': 3, '4': 1, '5': 11, '6': '.timebank.user.NewUserProfile', '10': 'profile'},
  ],
};

@$core.Deprecated('Use signUpDescriptor instead')
const SignUp_Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `SignUp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpDescriptor = $convert.base64Decode('CgZTaWduVXAadAoHUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkEjcKB3Byb2ZpbGUYAyABKAsyHS50aW1lYmFuay51c2VyLk5ld1VzZXJQcm9maWxlUgdwcm9maWxlGiMKCFJlc3BvbnNlEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZA==');