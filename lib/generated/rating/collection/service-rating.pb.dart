///
//  Generated code. Do not modify.
//  source: collection/service-rating.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TServiceRating extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TServiceRating', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient')
    ..hasRequiredFields = false
  ;

  TServiceRating._() : super();
  factory TServiceRating({
    $core.String? id,
    $core.String? author,
    $core.int? value,
    $core.String? comment,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? requestId,
    $core.String? recipient,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (author != null) {
      _result.author = author;
    }
    if (value != null) {
      _result.value = value;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (recipient != null) {
      _result.recipient = recipient;
    }
    return _result;
  }
  factory TServiceRating.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TServiceRating.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TServiceRating clone() => TServiceRating()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TServiceRating copyWith(void Function(TServiceRating) updates) => super.copyWith((message) => updates(message as TServiceRating)) as TServiceRating; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TServiceRating create() => TServiceRating._();
  TServiceRating createEmptyInstance() => create();
  static $pb.PbList<TServiceRating> createRepeated() => $pb.PbList<TServiceRating>();
  @$core.pragma('dart2js:noInline')
  static TServiceRating getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TServiceRating>(create);
  static TServiceRating? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get author => $_getSZ(1);
  @$pb.TagNumber(2)
  set author($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get value => $_getIZ(2);
  @$pb.TagNumber(3)
  set value($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => clearField(4);

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
  $core.String get requestId => $_getSZ(6);
  @$pb.TagNumber(7)
  set requestId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequestId() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequestId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get recipient => $_getSZ(7);
  @$pb.TagNumber(8)
  set recipient($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRecipient() => $_has(7);
  @$pb.TagNumber(8)
  void clearRecipient() => clearField(8);
}

class Create_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  Create_Payload._() : super();
  factory Create_Payload({
    $core.String? userId,
    $core.int? value,
    $core.String? comment,
    $core.String? requestId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (value != null) {
      _result.value = value;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory Create_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create_Payload clone() => Create_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create_Payload copyWith(void Function(Create_Payload) updates) => super.copyWith((message) => updates(message as Create_Payload)) as Create_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create_Payload create() => Create_Payload._();
  Create_Payload createEmptyInstance() => create();
  static $pb.PbList<Create_Payload> createRepeated() => $pb.PbList<Create_Payload>();
  @$core.pragma('dart2js:noInline')
  static Create_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create_Payload>(create);
  static Create_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get requestId => $_getSZ(3);
  @$pb.TagNumber(4)
  set requestId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestId() => clearField(4);
}

class Create_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<Create_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: Create_Payload.create)
    ..hasRequiredFields = false
  ;

  Create_Request._() : super();
  factory Create_Request({
    Create_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory Create_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create_Request clone() => Create_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create_Request copyWith(void Function(Create_Request) updates) => super.copyWith((message) => updates(message as Create_Request)) as Create_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create_Request create() => Create_Request._();
  Create_Request createEmptyInstance() => create();
  static $pb.PbList<Create_Request> createRepeated() => $pb.PbList<Create_Request>();
  @$core.pragma('dart2js:noInline')
  static Create_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create_Request>(create);
  static Create_Request? _defaultInstance;

  @$pb.TagNumber(1)
  Create_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Create_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Create_Payload ensurePayload() => $_ensure(0);
}

class Create_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<TServiceRating>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: TServiceRating.create)
    ..hasRequiredFields = false
  ;

  Create_Response._() : super();
  factory Create_Response({
    TServiceRating? rating,
  }) {
    final _result = create();
    if (rating != null) {
      _result.rating = rating;
    }
    return _result;
  }
  factory Create_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create_Response clone() => Create_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create_Response copyWith(void Function(Create_Response) updates) => super.copyWith((message) => updates(message as Create_Response)) as Create_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create_Response create() => Create_Response._();
  Create_Response createEmptyInstance() => create();
  static $pb.PbList<Create_Response> createRepeated() => $pb.PbList<Create_Response>();
  @$core.pragma('dart2js:noInline')
  static Create_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create_Response>(create);
  static Create_Response? _defaultInstance;

  @$pb.TagNumber(1)
  TServiceRating get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(TServiceRating v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  TServiceRating ensureRating() => $_ensure(0);
}

class Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Create._() : super();
  factory Create() => create();
  factory Create.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create clone() => Create()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create copyWith(void Function(Create) updates) => super.copyWith((message) => updates(message as Create)) as Create; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create create() => Create._();
  Create createEmptyInstance() => create();
  static $pb.PbList<Create> createRepeated() => $pb.PbList<Create>();
  @$core.pragma('dart2js:noInline')
  static Create getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create>(create);
  static Create? _defaultInstance;
}

class Get_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'column')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter')
    ..hasRequiredFields = false
  ;

  Get_Payload._() : super();
  factory Get_Payload({
    $core.String? column,
    $core.String? filter,
  }) {
    final _result = create();
    if (column != null) {
      _result.column = column;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    return _result;
  }
  factory Get_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Get_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Get_Payload clone() => Get_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Get_Payload copyWith(void Function(Get_Payload) updates) => super.copyWith((message) => updates(message as Get_Payload)) as Get_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Get_Payload create() => Get_Payload._();
  Get_Payload createEmptyInstance() => create();
  static $pb.PbList<Get_Payload> createRepeated() => $pb.PbList<Get_Payload>();
  @$core.pragma('dart2js:noInline')
  static Get_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Get_Payload>(create);
  static Get_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get column => $_getSZ(0);
  @$pb.TagNumber(1)
  set column($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasColumn() => $_has(0);
  @$pb.TagNumber(1)
  void clearColumn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get filter => $_getSZ(1);
  @$pb.TagNumber(2)
  set filter($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilter() => clearField(2);
}

class Get_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<Get_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: Get_Payload.create)
    ..hasRequiredFields = false
  ;

  Get_Request._() : super();
  factory Get_Request({
    Get_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
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
  Get_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Get_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Get_Payload ensurePayload() => $_ensure(0);
}

class Get_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..pc<TServiceRating>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratings', $pb.PbFieldType.PM, subBuilder: TServiceRating.create)
    ..hasRequiredFields = false
  ;

  Get_Response._() : super();
  factory Get_Response({
    $core.Iterable<TServiceRating>? ratings,
  }) {
    final _result = create();
    if (ratings != null) {
      _result.ratings.addAll(ratings);
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
  $core.List<TServiceRating> get ratings => $_getList(0);
}

class Get extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
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

class Update_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  Update_Payload._() : super();
  factory Update_Payload({
    $core.String? ratingId,
    $core.String? body,
  }) {
    final _result = create();
    if (ratingId != null) {
      _result.ratingId = ratingId;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory Update_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Update_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Update_Payload clone() => Update_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Update_Payload copyWith(void Function(Update_Payload) updates) => super.copyWith((message) => updates(message as Update_Payload)) as Update_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Update_Payload create() => Update_Payload._();
  Update_Payload createEmptyInstance() => create();
  static $pb.PbList<Update_Payload> createRepeated() => $pb.PbList<Update_Payload>();
  @$core.pragma('dart2js:noInline')
  static Update_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Update_Payload>(create);
  static Update_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ratingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ratingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRatingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRatingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

class Update_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<Update_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: Update_Payload.create)
    ..hasRequiredFields = false
  ;

  Update_Request._() : super();
  factory Update_Request({
    Update_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
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
  Update_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Update_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Update_Payload ensurePayload() => $_ensure(0);
}

class Update_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<TServiceRating>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: TServiceRating.create)
    ..hasRequiredFields = false
  ;

  Update_Response._() : super();
  factory Update_Response({
    TServiceRating? rating,
  }) {
    final _result = create();
    if (rating != null) {
      _result.rating = rating;
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
  TServiceRating get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(TServiceRating v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  TServiceRating ensureRating() => $_ensure(0);
}

class Update extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
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

class Delete_Payload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Payload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingId')
    ..hasRequiredFields = false
  ;

  Delete_Payload._() : super();
  factory Delete_Payload({
    $core.String? ratingId,
  }) {
    final _result = create();
    if (ratingId != null) {
      _result.ratingId = ratingId;
    }
    return _result;
  }
  factory Delete_Payload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delete_Payload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Delete_Payload clone() => Delete_Payload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Delete_Payload copyWith(void Function(Delete_Payload) updates) => super.copyWith((message) => updates(message as Delete_Payload)) as Delete_Payload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Delete_Payload create() => Delete_Payload._();
  Delete_Payload createEmptyInstance() => create();
  static $pb.PbList<Delete_Payload> createRepeated() => $pb.PbList<Delete_Payload>();
  @$core.pragma('dart2js:noInline')
  static Delete_Payload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delete_Payload>(create);
  static Delete_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ratingId => $_getSZ(0);
  @$pb.TagNumber(1)
  set ratingId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRatingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRatingId() => clearField(1);
}

class Delete_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..aOM<Delete_Payload>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: Delete_Payload.create)
    ..hasRequiredFields = false
  ;

  Delete_Request._() : super();
  factory Delete_Request({
    Delete_Payload? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory Delete_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delete_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Delete_Request clone() => Delete_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Delete_Request copyWith(void Function(Delete_Request) updates) => super.copyWith((message) => updates(message as Delete_Request)) as Delete_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Delete_Request create() => Delete_Request._();
  Delete_Request createEmptyInstance() => create();
  static $pb.PbList<Delete_Request> createRepeated() => $pb.PbList<Delete_Request>();
  @$core.pragma('dart2js:noInline')
  static Delete_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delete_Request>(create);
  static Delete_Request? _defaultInstance;

  @$pb.TagNumber(1)
  Delete_Payload get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload(Delete_Payload v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  Delete_Payload ensurePayload() => $_ensure(0);
}

class Delete_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Delete_Response._() : super();
  factory Delete_Response() => create();
  factory Delete_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delete_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Delete_Response clone() => Delete_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Delete_Response copyWith(void Function(Delete_Response) updates) => super.copyWith((message) => updates(message as Delete_Response)) as Delete_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Delete_Response create() => Delete_Response._();
  Delete_Response createEmptyInstance() => create();
  static $pb.PbList<Delete_Response> createRepeated() => $pb.PbList<Delete_Response>();
  @$core.pragma('dart2js:noInline')
  static Delete_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delete_Response>(create);
  static Delete_Response? _defaultInstance;
}

class Delete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerating'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Delete._() : super();
  factory Delete() => create();
  factory Delete.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Delete.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Delete clone() => Delete()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Delete copyWith(void Function(Delete) updates) => super.copyWith((message) => updates(message as Delete)) as Delete; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Delete create() => Delete._();
  Delete createEmptyInstance() => create();
  static $pb.PbList<Delete> createRepeated() => $pb.PbList<Delete>();
  @$core.pragma('dart2js:noInline')
  static Delete getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Delete>(create);
  static Delete? _defaultInstance;
}

