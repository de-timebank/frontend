///
//  Generated code. Do not modify.
//  source: collection/rating.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RatingData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RatingData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingFor')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recipient')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  RatingData._() : super();
  factory RatingData({
    $core.String? requestId,
    $core.String? ratingFor,
    $core.String? author,
    $core.String? recipient,
    $core.int? value,
    $core.String? comment,
    $core.String? createdAt,
    $core.String? updatedAt,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (ratingFor != null) {
      _result.ratingFor = ratingFor;
    }
    if (author != null) {
      _result.author = author;
    }
    if (recipient != null) {
      _result.recipient = recipient;
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
    return _result;
  }
  factory RatingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RatingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RatingData clone() => RatingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RatingData copyWith(void Function(RatingData) updates) => super.copyWith((message) => updates(message as RatingData)) as RatingData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RatingData create() => RatingData._();
  RatingData createEmptyInstance() => create();
  static $pb.PbList<RatingData> createRepeated() => $pb.PbList<RatingData>();
  @$core.pragma('dart2js:noInline')
  static RatingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RatingData>(create);
  static RatingData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ratingFor => $_getSZ(1);
  @$pb.TagNumber(2)
  set ratingFor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRatingFor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatingFor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get recipient => $_getSZ(3);
  @$pb.TagNumber(4)
  set recipient($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRecipient() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecipient() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get value => $_getIZ(4);
  @$pb.TagNumber(5)
  set value($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get comment => $_getSZ(5);
  @$pb.TagNumber(6)
  set comment($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasComment() => $_has(5);
  @$pb.TagNumber(6)
  void clearComment() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
}

class Create_NewRatingData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.NewRatingData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  Create_NewRatingData._() : super();
  factory Create_NewRatingData({
    $core.String? author,
    $core.int? value,
    $core.String? comment,
    $core.String? requestId,
  }) {
    final _result = create();
    if (author != null) {
      _result.author = author;
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
  factory Create_NewRatingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create_NewRatingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create_NewRatingData clone() => Create_NewRatingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create_NewRatingData copyWith(void Function(Create_NewRatingData) updates) => super.copyWith((message) => updates(message as Create_NewRatingData)) as Create_NewRatingData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create_NewRatingData create() => Create_NewRatingData._();
  Create_NewRatingData createEmptyInstance() => create();
  static $pb.PbList<Create_NewRatingData> createRepeated() => $pb.PbList<Create_NewRatingData>();
  @$core.pragma('dart2js:noInline')
  static Create_NewRatingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create_NewRatingData>(create);
  static Create_NewRatingData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get author => $_getSZ(0);
  @$pb.TagNumber(1)
  set author($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthor() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthor() => clearField(1);

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOM<Create_NewRatingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: Create_NewRatingData.create)
    ..hasRequiredFields = false
  ;

  Create_Request._() : super();
  factory Create_Request({
    Create_NewRatingData? rating,
  }) {
    final _result = create();
    if (rating != null) {
      _result.rating = rating;
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
  Create_NewRatingData get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(Create_NewRatingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  Create_NewRatingData ensureRating() => $_ensure(0);
}

class Create_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOM<RatingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: RatingData.create)
    ..hasRequiredFields = false
  ;

  Create_Response._() : super();
  factory Create_Response({
    RatingData? rating,
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
  RatingData get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(RatingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  RatingData ensureRating() => $_ensure(0);
}

class Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
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

class GetForRequest_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetForRequest.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  GetForRequest_Request._() : super();
  factory GetForRequest_Request({
    $core.String? requestId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory GetForRequest_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForRequest_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForRequest_Request clone() => GetForRequest_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForRequest_Request copyWith(void Function(GetForRequest_Request) updates) => super.copyWith((message) => updates(message as GetForRequest_Request)) as GetForRequest_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetForRequest_Request create() => GetForRequest_Request._();
  GetForRequest_Request createEmptyInstance() => create();
  static $pb.PbList<GetForRequest_Request> createRepeated() => $pb.PbList<GetForRequest_Request>();
  @$core.pragma('dart2js:noInline')
  static GetForRequest_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForRequest_Request>(create);
  static GetForRequest_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);
}

class GetForRequest_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetForRequest.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..pc<RatingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratings', $pb.PbFieldType.PM, subBuilder: RatingData.create)
    ..hasRequiredFields = false
  ;

  GetForRequest_Response._() : super();
  factory GetForRequest_Response({
    $core.Iterable<RatingData>? ratings,
  }) {
    final _result = create();
    if (ratings != null) {
      _result.ratings.addAll(ratings);
    }
    return _result;
  }
  factory GetForRequest_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForRequest_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForRequest_Response clone() => GetForRequest_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForRequest_Response copyWith(void Function(GetForRequest_Response) updates) => super.copyWith((message) => updates(message as GetForRequest_Response)) as GetForRequest_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetForRequest_Response create() => GetForRequest_Response._();
  GetForRequest_Response createEmptyInstance() => create();
  static $pb.PbList<GetForRequest_Response> createRepeated() => $pb.PbList<GetForRequest_Response>();
  @$core.pragma('dart2js:noInline')
  static GetForRequest_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForRequest_Response>(create);
  static GetForRequest_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RatingData> get ratings => $_getList(0);
}

class GetForRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetForRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetForRequest._() : super();
  factory GetForRequest() => create();
  factory GetForRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetForRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetForRequest clone() => GetForRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetForRequest copyWith(void Function(GetForRequest) updates) => super.copyWith((message) => updates(message as GetForRequest)) as GetForRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetForRequest create() => GetForRequest._();
  GetForRequest createEmptyInstance() => create();
  static $pb.PbList<GetForRequest> createRepeated() => $pb.PbList<GetForRequest>();
  @$core.pragma('dart2js:noInline')
  static GetForRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetForRequest>(create);
  static GetForRequest? _defaultInstance;
}

class Update_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingFor')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  Update_Request._() : super();
  factory Update_Request({
    $core.String? requestId,
    $core.String? ratingFor,
    $core.String? body,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (ratingFor != null) {
      _result.ratingFor = ratingFor;
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
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ratingFor => $_getSZ(1);
  @$pb.TagNumber(2)
  set ratingFor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRatingFor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatingFor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

class Update_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOM<RatingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: RatingData.create)
    ..hasRequiredFields = false
  ;

  Update_Response._() : super();
  factory Update_Response({
    RatingData? rating,
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
  RatingData get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(RatingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  RatingData ensureRating() => $_ensure(0);
}

class Update extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
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

class Delete_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingFor')
    ..hasRequiredFields = false
  ;

  Delete_Request._() : super();
  factory Delete_Request({
    $core.String? requestId,
    $core.String? ratingFor,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (ratingFor != null) {
      _result.ratingFor = ratingFor;
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
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ratingFor => $_getSZ(1);
  @$pb.TagNumber(2)
  set ratingFor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRatingFor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatingFor() => clearField(2);
}

class Delete_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
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

class GetById_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ratingFor')
    ..hasRequiredFields = false
  ;

  GetById_Request._() : super();
  factory GetById_Request({
    $core.String? requestId,
    $core.String? ratingFor,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (ratingFor != null) {
      _result.ratingFor = ratingFor;
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
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ratingFor => $_getSZ(1);
  @$pb.TagNumber(2)
  set ratingFor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRatingFor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRatingFor() => clearField(2);
}

class GetById_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
    ..aOM<RatingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', subBuilder: RatingData.create)
    ..hasRequiredFields = false
  ;

  GetById_Response._() : super();
  factory GetById_Response({
    RatingData? rating,
  }) {
    final _result = create();
    if (rating != null) {
      _result.rating = rating;
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
  RatingData get rating => $_getN(0);
  @$pb.TagNumber(1)
  set rating(RatingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRating() => $_has(0);
  @$pb.TagNumber(1)
  void clearRating() => clearField(1);
  @$pb.TagNumber(1)
  RatingData ensureRating() => $_ensure(0);
}

class GetById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rating'), createEmptyInstance: create)
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

