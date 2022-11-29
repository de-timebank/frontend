///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'collection/rating.pb.dart' as $0;

class ProfileImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProfileImage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..hasRequiredFields = false
  ;

  ProfileImage._() : super();
  factory ProfileImage({
    $core.String? url,
    $core.String? mimeType,
  }) {
    final _result = create();
    if (url != null) {
      _result.url = url;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    return _result;
  }
  factory ProfileImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProfileImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProfileImage clone() => ProfileImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProfileImage copyWith(void Function(ProfileImage) updates) => super.copyWith((message) => updates(message as ProfileImage)) as ProfileImage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProfileImage create() => ProfileImage._();
  ProfileImage createEmptyInstance() => create();
  static $pb.PbList<ProfileImage> createRepeated() => $pb.PbList<ProfileImage>();
  @$core.pragma('dart2js:noInline')
  static ProfileImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProfileImage>(create);
  static ProfileImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set mimeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMimeType() => clearField(2);
}

class Contact extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Contact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  Contact._() : super();
  factory Contact({
    $core.String? type,
    $core.String? address,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory Contact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Contact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Contact clone() => Contact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Contact copyWith(void Function(Contact) updates) => super.copyWith((message) => updates(message as Contact)) as Contact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  Contact createEmptyInstance() => create();
  static $pb.PbList<Contact> createRepeated() => $pb.PbList<Contact>();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class NewUserProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewUserProfile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skills')
    ..pc<Contact>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matricNumber')
    ..hasRequiredFields = false
  ;

  NewUserProfile._() : super();
  factory NewUserProfile({
    $core.String? name,
    $core.Iterable<$core.String>? skills,
    $core.Iterable<Contact>? contacts,
    $core.String? gender,
    $core.String? matricNumber,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (skills != null) {
      _result.skills.addAll(skills);
    }
    if (contacts != null) {
      _result.contacts.addAll(contacts);
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (matricNumber != null) {
      _result.matricNumber = matricNumber;
    }
    return _result;
  }
  factory NewUserProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewUserProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewUserProfile clone() => NewUserProfile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewUserProfile copyWith(void Function(NewUserProfile) updates) => super.copyWith((message) => updates(message as NewUserProfile)) as NewUserProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewUserProfile create() => NewUserProfile._();
  NewUserProfile createEmptyInstance() => create();
  static $pb.PbList<NewUserProfile> createRepeated() => $pb.PbList<NewUserProfile>();
  @$core.pragma('dart2js:noInline')
  static NewUserProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewUserProfile>(create);
  static NewUserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get skills => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Contact> get contacts => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get gender => $_getSZ(3);
  @$pb.TagNumber(4)
  set gender($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get matricNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set matricNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMatricNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearMatricNumber() => clearField(5);
}

class UserProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserProfile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skills')
    ..pc<Contact>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contacts', $pb.PbFieldType.PM, subBuilder: Contact.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gender')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'matricNumber')
    ..hasRequiredFields = false
  ;

  UserProfile._() : super();
  factory UserProfile({
    $core.String? userId,
    $core.String? name,
    $core.Iterable<$core.String>? skills,
    $core.Iterable<Contact>? contacts,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? gender,
    $core.String? matricNumber,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (skills != null) {
      _result.skills.addAll(skills);
    }
    if (contacts != null) {
      _result.contacts.addAll(contacts);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (matricNumber != null) {
      _result.matricNumber = matricNumber;
    }
    return _result;
  }
  factory UserProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProfile clone() => UserProfile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProfile copyWith(void Function(UserProfile) updates) => super.copyWith((message) => updates(message as UserProfile)) as UserProfile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserProfile create() => UserProfile._();
  UserProfile createEmptyInstance() => create();
  static $pb.PbList<UserProfile> createRepeated() => $pb.PbList<UserProfile>();
  @$core.pragma('dart2js:noInline')
  static UserProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProfile>(create);
  static UserProfile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get skills => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Contact> get contacts => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get createdAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set createdAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updatedAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set updatedAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get gender => $_getSZ(6);
  @$pb.TagNumber(7)
  set gender($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGender() => $_has(6);
  @$pb.TagNumber(7)
  void clearGender() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get matricNumber => $_getSZ(7);
  @$pb.TagNumber(8)
  set matricNumber($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMatricNumber() => $_has(7);
  @$pb.TagNumber(8)
  void clearMatricNumber() => clearField(8);
}

class Get_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  Get_Request._() : super();
  factory Get_Request({
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Get_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_Request clone() => Get_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_Request copyWith(void Function(Get_Request) updates) => super.copyWith((message) => updates(message as Get_Request)) as Get_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_Request create() => Get_Request._();
  Get_Request createEmptyInstance() => create();
  static $pb.PbList<Get_Request> createRepeated() => $pb.PbList<Get_Request>();
  @$core.pragma('dart2js:noInline')
  static Get_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_Request>(create);
  static Get_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class Get_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..pc<UserProfile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: UserProfile.create)
    ..hasRequiredFields = false
  ;

  Get_Response._() : super();
  factory Get_Response({
    $core.Iterable<UserProfile>? users,
  }) {
    final _result = create();
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory Get_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_Response clone() => Get_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_Response copyWith(void Function(Get_Response) updates) => super.copyWith((message) => updates(message as Get_Response)) as Get_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_Response create() => Get_Response._();
  Get_Response createEmptyInstance() => create();
  static $pb.PbList<Get_Response> createRepeated() => $pb.PbList<Get_Response>();
  @$core.pragma('dart2js:noInline')
  static Get_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_Response>(create);
  static Get_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserProfile> get users => $_getList(0);
}

class Get extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Get._() : super();
  factory Get() => create();
  factory Get.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get clone() => Get()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get copyWith(void Function(Get) updates) => super.copyWith((message) => updates(message as Get)) as Get; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get create() => Get._();
  Get createEmptyInstance() => create();
  static $pb.PbList<Get> createRepeated() => $pb.PbList<Get>();
  @$core.pragma('dart2js:noInline')
  static Get getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get>(create);
  static Get? _defaultInstance;
}

class GetById_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  GetById_Request._() : super();
  factory GetById_Request({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetById_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetById_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetById_Request clone() => GetById_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetById_Request copyWith(void Function(GetById_Request) updates) => super.copyWith((message) => updates(message as GetById_Request)) as GetById_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetById_Request create() => GetById_Request._();
  GetById_Request createEmptyInstance() => create();
  static $pb.PbList<GetById_Request> createRepeated() => $pb.PbList<GetById_Request>();
  @$core.pragma('dart2js:noInline')
  static GetById_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetById_Request>(create);
  static GetById_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetById_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOM<UserProfile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: UserProfile.create)
    ..hasRequiredFields = false
  ;

  GetById_Response._() : super();
  factory GetById_Response({
    UserProfile? user,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory GetById_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetById_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetById_Response clone() => GetById_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetById_Response copyWith(void Function(GetById_Response) updates) => super.copyWith((message) => updates(message as GetById_Response)) as GetById_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetById_Response create() => GetById_Response._();
  GetById_Response createEmptyInstance() => create();
  static $pb.PbList<GetById_Response> createRepeated() => $pb.PbList<GetById_Response>();
  @$core.pragma('dart2js:noInline')
  static GetById_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetById_Response>(create);
  static GetById_Response? _defaultInstance;

  @$pb.TagNumber(1)
  UserProfile get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserProfile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureUser() => $_ensure(0);
}

class GetById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetById._() : super();
  factory GetById() => create();
  factory GetById.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetById.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetById clone() => GetById()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetById copyWith(void Function(GetById) updates) => super.copyWith((message) => updates(message as GetById)) as GetById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetById create() => GetById._();
  GetById createEmptyInstance() => create();
  static $pb.PbList<GetById> createRepeated() => $pb.PbList<GetById>();
  @$core.pragma('dart2js:noInline')
  static GetById getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetById>(create);
  static GetById? _defaultInstance;
}

class Update_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  Update_Request._() : super();
  factory Update_Request({
    $core.String? userId,
    $core.String? body,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory Update_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Update_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Update_Request clone() => Update_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Update_Request copyWith(void Function(Update_Request) updates) => super.copyWith((message) => updates(message as Update_Request)) as Update_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Update_Request create() => Update_Request._();
  Update_Request createEmptyInstance() => create();
  static $pb.PbList<Update_Request> createRepeated() => $pb.PbList<Update_Request>();
  @$core.pragma('dart2js:noInline')
  static Update_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Update_Request>(create);
  static Update_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

class Update_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOM<UserProfile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: UserProfile.create)
    ..hasRequiredFields = false
  ;

  Update_Response._() : super();
  factory Update_Response({
    UserProfile? user,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory Update_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Update_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Update_Response clone() => Update_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Update_Response copyWith(void Function(Update_Response) updates) => super.copyWith((message) => updates(message as Update_Response)) as Update_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Update_Response create() => Update_Response._();
  Update_Response createEmptyInstance() => create();
  static $pb.PbList<Update_Response> createRepeated() => $pb.PbList<Update_Response>();
  @$core.pragma('dart2js:noInline')
  static Update_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Update_Response>(create);
  static Update_Response? _defaultInstance;

  @$pb.TagNumber(1)
  UserProfile get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserProfile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserProfile ensureUser() => $_ensure(0);
}

class Update extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Update._() : super();
  factory Update() => create();
  factory Update.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Update.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Update clone() => Update()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Update copyWith(void Function(Update) updates) => super.copyWith((message) => updates(message as Update)) as Update; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Update create() => Update._();
  Update createEmptyInstance() => create();
  static $pb.PbList<Update> createRepeated() => $pb.PbList<Update>();
  @$core.pragma('dart2js:noInline')
  static Update getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Update>(create);
  static Update? _defaultInstance;
}

class GetRating_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRating.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  GetRating_Request._() : super();
  factory GetRating_Request({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetRating_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRating_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRating_Request clone() => GetRating_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRating_Request copyWith(void Function(GetRating_Request) updates) => super.copyWith((message) => updates(message as GetRating_Request)) as GetRating_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRating_Request create() => GetRating_Request._();
  GetRating_Request createEmptyInstance() => create();
  static $pb.PbList<GetRating_Request> createRepeated() => $pb.PbList<GetRating_Request>();
  @$core.pragma('dart2js:noInline')
  static GetRating_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRating_Request>(create);
  static GetRating_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetRating_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRating.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'average', $pb.PbFieldType.O3)
    ..pc<$0.RatingData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratings', $pb.PbFieldType.PM, subBuilder: $0.RatingData.create)
    ..hasRequiredFields = false
  ;

  GetRating_Response._() : super();
  factory GetRating_Response({
    $core.int? average,
    $core.Iterable<$0.RatingData>? ratings,
  }) {
    final _result = create();
    if (average != null) {
      _result.average = average;
    }
    if (ratings != null) {
      _result.ratings.addAll(ratings);
    }
    return _result;
  }
  factory GetRating_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRating_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRating_Response clone() => GetRating_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRating_Response copyWith(void Function(GetRating_Response) updates) => super.copyWith((message) => updates(message as GetRating_Response)) as GetRating_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRating_Response create() => GetRating_Response._();
  GetRating_Response createEmptyInstance() => create();
  static $pb.PbList<GetRating_Response> createRepeated() => $pb.PbList<GetRating_Response>();
  @$core.pragma('dart2js:noInline')
  static GetRating_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRating_Response>(create);
  static GetRating_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get average => $_getIZ(0);
  @$pb.TagNumber(1)
  set average($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAverage() => $_has(0);
  @$pb.TagNumber(1)
  void clearAverage() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.RatingData> get ratings => $_getList(1);
}

class GetRating extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRating', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetRating._() : super();
  factory GetRating() => create();
  factory GetRating.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRating.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRating clone() => GetRating()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRating copyWith(void Function(GetRating) updates) => super.copyWith((message) => updates(message as GetRating)) as GetRating; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRating create() => GetRating._();
  GetRating createEmptyInstance() => create();
  static $pb.PbList<GetRating> createRepeated() => $pb.PbList<GetRating>();
  @$core.pragma('dart2js:noInline')
  static GetRating getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRating>(create);
  static GetRating? _defaultInstance;
}

class GetCreditBalance_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCreditBalance.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  GetCreditBalance_Request._() : super();
  factory GetCreditBalance_Request({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetCreditBalance_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCreditBalance_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCreditBalance_Request clone() => GetCreditBalance_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCreditBalance_Request copyWith(void Function(GetCreditBalance_Request) updates) => super.copyWith((message) => updates(message as GetCreditBalance_Request)) as GetCreditBalance_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance_Request create() => GetCreditBalance_Request._();
  GetCreditBalance_Request createEmptyInstance() => create();
  static $pb.PbList<GetCreditBalance_Request> createRepeated() => $pb.PbList<GetCreditBalance_Request>();
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCreditBalance_Request>(create);
  static GetCreditBalance_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetCreditBalance_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCreditBalance.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GetCreditBalance_Response._() : super();
  factory GetCreditBalance_Response({
    $fixnum.Int64? balance,
  }) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }
  factory GetCreditBalance_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCreditBalance_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCreditBalance_Response clone() => GetCreditBalance_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCreditBalance_Response copyWith(void Function(GetCreditBalance_Response) updates) => super.copyWith((message) => updates(message as GetCreditBalance_Response)) as GetCreditBalance_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance_Response create() => GetCreditBalance_Response._();
  GetCreditBalance_Response createEmptyInstance() => create();
  static $pb.PbList<GetCreditBalance_Response> createRepeated() => $pb.PbList<GetCreditBalance_Response>();
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCreditBalance_Response>(create);
  static GetCreditBalance_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);
  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

class GetCreditBalance extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCreditBalance', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetCreditBalance._() : super();
  factory GetCreditBalance() => create();
  factory GetCreditBalance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCreditBalance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCreditBalance clone() => GetCreditBalance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCreditBalance copyWith(void Function(GetCreditBalance) updates) => super.copyWith((message) => updates(message as GetCreditBalance)) as GetCreditBalance; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance create() => GetCreditBalance._();
  GetCreditBalance createEmptyInstance() => create();
  static $pb.PbList<GetCreditBalance> createRepeated() => $pb.PbList<GetCreditBalance>();
  @$core.pragma('dart2js:noInline')
  static GetCreditBalance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCreditBalance>(create);
  static GetCreditBalance? _defaultInstance;
}

