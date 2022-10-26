///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SignIn_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignIn.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  SignIn_Payload._() : super();
  factory SignIn_Payload({
    $core.String? email,
    $core.String? password,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory SignIn_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignIn_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignIn_Payload clone() => SignIn_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignIn_Payload copyWith(void Function(SignIn_Payload) updates) => super.copyWith((message) => updates(message as SignIn_Payload)) as SignIn_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignIn_Payload create() => SignIn_Payload._();
  SignIn_Payload createEmptyInstance() => create();
  static $pb.PbList<SignIn_Payload> createRepeated() => $pb.PbList<SignIn_Payload>();
  @$core.pragma('dart2js:noInline')
  static SignIn_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignIn_Payload>(create);
  static SignIn_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class SignIn_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignIn.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..aOM<SignIn_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: SignIn_Payload.create)
    ..hasRequiredFields = false
  ;

  SignIn_Request._() : super();
  factory SignIn_Request({
    SignIn_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory SignIn_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignIn_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignIn_Request clone() => SignIn_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignIn_Request copyWith(void Function(SignIn_Request) updates) => super.copyWith((message) => updates(message as SignIn_Request)) as SignIn_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignIn_Request create() => SignIn_Request._();
  SignIn_Request createEmptyInstance() => create();
  static $pb.PbList<SignIn_Request> createRepeated() => $pb.PbList<SignIn_Request>();
  @$core.pragma('dart2js:noInline')
  static SignIn_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignIn_Request>(create);
  static SignIn_Request? _defaultInstance;

  @$pb.TagNumber(1)
  SignIn_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(SignIn_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  SignIn_Payload ensurePayload() => $_ensure(0);
}

class SignIn_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignIn.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authToken')
    ..hasRequiredFields = false
  ;

  SignIn_Response._() : super();
  factory SignIn_Response({
    $core.String? userId,
    $core.String? authToken,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (authToken != null) {
      _result.authToken = authToken;
    }
    return _result;
  }
  factory SignIn_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignIn_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignIn_Response clone() => SignIn_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignIn_Response copyWith(void Function(SignIn_Response) updates) => super.copyWith((message) => updates(message as SignIn_Response)) as SignIn_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignIn_Response create() => SignIn_Response._();
  SignIn_Response createEmptyInstance() => create();
  static $pb.PbList<SignIn_Response> createRepeated() => $pb.PbList<SignIn_Response>();
  @$core.pragma('dart2js:noInline')
  static SignIn_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignIn_Response>(create);
  static SignIn_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get authToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set authToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthToken() => clearField(2);
}

class SignIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignIn', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SignIn._() : super();
  factory SignIn() => create();
  factory SignIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignIn clone() => SignIn()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignIn copyWith(void Function(SignIn) updates) => super.copyWith((message) => updates(message as SignIn)) as SignIn; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignIn create() => SignIn._();
  SignIn createEmptyInstance() => create();
  static $pb.PbList<SignIn> createRepeated() => $pb.PbList<SignIn>();
  @$core.pragma('dart2js:noInline')
  static SignIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignIn>(create);
  static SignIn? _defaultInstance;
}

class SignUp_MatricCard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUp.MatricCard', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'front', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'back', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignUp_MatricCard._() : super();
  factory SignUp_MatricCard({
    $core.List<$core.int>? front,
    $core.List<$core.int>? back,
  }) {
    final _result = create();
    if (front != null) {
      _result.front = front;
    }
    if (back != null) {
      _result.back = back;
    }
    return _result;
  }
  factory SignUp_MatricCard.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUp_MatricCard.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUp_MatricCard clone() => SignUp_MatricCard()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUp_MatricCard copyWith(void Function(SignUp_MatricCard) updates) => super.copyWith((message) => updates(message as SignUp_MatricCard)) as SignUp_MatricCard; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUp_MatricCard create() => SignUp_MatricCard._();
  SignUp_MatricCard createEmptyInstance() => create();
  static $pb.PbList<SignUp_MatricCard> createRepeated() => $pb.PbList<SignUp_MatricCard>();
  @$core.pragma('dart2js:noInline')
  static SignUp_MatricCard getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUp_MatricCard>(create);
  static SignUp_MatricCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get front => $_getN(0);
  @$pb.TagNumber(1)
  set front($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFront() => $_has(0);
  @$pb.TagNumber(1)
  void clearFront() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get back => $_getN(1);
  @$pb.TagNumber(2)
  set back($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBack() => $_has(1);
  @$pb.TagNumber(2)
  void clearBack() => clearField(2);
}

class SignUp_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUp.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matricNumber')
    ..aOM<SignUp_MatricCard>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matricCard', subBuilder: SignUp_MatricCard.create)
    ..hasRequiredFields = false
  ;

  SignUp_Payload._() : super();
  factory SignUp_Payload({
    $core.String? email,
    $core.String? password,
    $core.String? name,
    $core.String? phoneNumber,
    $core.String? matricNumber,
    SignUp_MatricCard? matricCard,
  }) {
    final _result = create();
    if (email != null) {
      _result.email = email;
    }
    if (password != null) {
      _result.password = password;
    }
    if (name != null) {
      _result.name = name;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (matricNumber != null) {
      _result.matricNumber = matricNumber;
    }
    if (matricCard != null) {
      _result.matricCard = matricCard;
    }
    return _result;
  }
  factory SignUp_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUp_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUp_Payload clone() => SignUp_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUp_Payload copyWith(void Function(SignUp_Payload) updates) => super.copyWith((message) => updates(message as SignUp_Payload)) as SignUp_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUp_Payload create() => SignUp_Payload._();
  SignUp_Payload createEmptyInstance() => create();
  static $pb.PbList<SignUp_Payload> createRepeated() => $pb.PbList<SignUp_Payload>();
  @$core.pragma('dart2js:noInline')
  static SignUp_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUp_Payload>(create);
  static SignUp_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get matricNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set matricNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMatricNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearMatricNumber() => clearField(5);

  @$pb.TagNumber(6)
  SignUp_MatricCard get matricCard => $_getN(5);
  @$pb.TagNumber(6)
  set matricCard(SignUp_MatricCard v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMatricCard() => $_has(5);
  @$pb.TagNumber(6)
  void clearMatricCard() => clearField(6);
  @$pb.TagNumber(6)
  SignUp_MatricCard ensureMatricCard() => $_ensure(5);
}

class SignUp_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUp.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..aOM<SignUp_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: SignUp_Payload.create)
    ..hasRequiredFields = false
  ;

  SignUp_Request._() : super();
  factory SignUp_Request({
    SignUp_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory SignUp_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUp_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUp_Request clone() => SignUp_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUp_Request copyWith(void Function(SignUp_Request) updates) => super.copyWith((message) => updates(message as SignUp_Request)) as SignUp_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUp_Request create() => SignUp_Request._();
  SignUp_Request createEmptyInstance() => create();
  static $pb.PbList<SignUp_Request> createRepeated() => $pb.PbList<SignUp_Request>();
  @$core.pragma('dart2js:noInline')
  static SignUp_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUp_Request>(create);
  static SignUp_Request? _defaultInstance;

  @$pb.TagNumber(1)
  SignUp_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(SignUp_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  SignUp_Payload ensurePayload() => $_ensure(0);
}

class SignUp_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUp.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SignUp_Response._() : super();
  factory SignUp_Response() => create();
  factory SignUp_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUp_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUp_Response clone() => SignUp_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUp_Response copyWith(void Function(SignUp_Response) updates) => super.copyWith((message) => updates(message as SignUp_Response)) as SignUp_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUp_Response create() => SignUp_Response._();
  SignUp_Response createEmptyInstance() => create();
  static $pb.PbList<SignUp_Response> createRepeated() => $pb.PbList<SignUp_Response>();
  @$core.pragma('dart2js:noInline')
  static SignUp_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUp_Response>(create);
  static SignUp_Response? _defaultInstance;
}

class SignUp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SignUp._() : super();
  factory SignUp() => create();
  factory SignUp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUp clone() => SignUp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUp copyWith(void Function(SignUp) updates) => super.copyWith((message) => updates(message as SignUp)) as SignUp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUp create() => SignUp._();
  SignUp createEmptyInstance() => create();
  static $pb.PbList<SignUp> createRepeated() => $pb.PbList<SignUp>();
  @$core.pragma('dart2js:noInline')
  static SignUp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUp>(create);
  static SignUp? _defaultInstance;
}

