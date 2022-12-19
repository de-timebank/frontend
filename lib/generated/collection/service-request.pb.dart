///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../user.pb.dart' as $1;
import '../misc.pb.dart' as $3;

import 'service-request.pbenum.dart';

export 'service-request.pbenum.dart';

class ServiceRequestData_Details extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData.Details', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  ServiceRequestData_Details._() : super();
  factory ServiceRequestData_Details({
    $core.String? title,
    $core.String? description,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory ServiceRequestData_Details.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceRequestData_Details.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Details clone() => ServiceRequestData_Details()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Details copyWith(void Function(ServiceRequestData_Details) updates) => super.copyWith((message) => updates(message as ServiceRequestData_Details)) as ServiceRequestData_Details; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Details create() => ServiceRequestData_Details._();
  ServiceRequestData_Details createEmptyInstance() => create();
  static $pb.PbList<ServiceRequestData_Details> createRepeated() => $pb.PbList<ServiceRequestData_Details>();
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Details getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceRequestData_Details>(create);
  static ServiceRequestData_Details? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class ServiceRequestData_Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData.Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..hasRequiredFields = false
  ;

  ServiceRequestData_Location._() : super();
  factory ServiceRequestData_Location({
    $core.String? address,
    $core.String? city,
    $core.String? state,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (city != null) {
      _result.city = city;
    }
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory ServiceRequestData_Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceRequestData_Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Location clone() => ServiceRequestData_Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Location copyWith(void Function(ServiceRequestData_Location) updates) => super.copyWith((message) => updates(message as ServiceRequestData_Location)) as ServiceRequestData_Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Location create() => ServiceRequestData_Location._();
  ServiceRequestData_Location createEmptyInstance() => create();
  static $pb.PbList<ServiceRequestData_Location> createRepeated() => $pb.PbList<ServiceRequestData_Location>();
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceRequestData_Location>(create);
  static ServiceRequestData_Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get city => $_getSZ(1);
  @$pb.TagNumber(2)
  set city($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get state => $_getSZ(2);
  @$pb.TagNumber(3)
  set state($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

class ServiceRequestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestor')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider')
    ..aOM<ServiceRequestData_Location>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: ServiceRequestData_Location.create)
    ..e<ServiceRequestData_State>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: ServiceRequestData_State.PENDING, valueOf: ServiceRequestData_State.valueOf, enumValues: ServiceRequestData_State.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaAttachments')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rate', $pb.PbFieldType.OF)
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicants')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt')
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLimit', $pb.PbFieldType.OF)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actualPayment', $pb.PbFieldType.OF)
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..hasRequiredFields = false
  ;

  ServiceRequestData._() : super();
  factory ServiceRequestData({
    $core.String? id,
    $core.String? requestor,
    $core.String? provider,
    ServiceRequestData_Location? location,
    ServiceRequestData_State? state,
    $core.String? title,
    $core.String? description,
    $core.Iterable<$core.String>? mediaAttachments,
    $core.double? rate,
    $core.Iterable<$core.String>? applicants,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? completedAt,
    $core.String? category,
    $core.String? startedAt,
    $core.double? timeLimit,
    $core.double? actualPayment,
    $core.String? date,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (requestor != null) {
      _result.requestor = requestor;
    }
    if (provider != null) {
      _result.provider = provider;
    }
    if (location != null) {
      _result.location = location;
    }
    if (state != null) {
      _result.state = state;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (mediaAttachments != null) {
      _result.mediaAttachments.addAll(mediaAttachments);
    }
    if (rate != null) {
      _result.rate = rate;
    }
    if (applicants != null) {
      _result.applicants.addAll(applicants);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (completedAt != null) {
      _result.completedAt = completedAt;
    }
    if (category != null) {
      _result.category = category;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (timeLimit != null) {
      _result.timeLimit = timeLimit;
    }
    if (actualPayment != null) {
      _result.actualPayment = actualPayment;
    }
    if (date != null) {
      _result.date = date;
    }
    return _result;
  }
  factory ServiceRequestData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceRequestData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceRequestData clone() => ServiceRequestData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceRequestData copyWith(void Function(ServiceRequestData) updates) => super.copyWith((message) => updates(message as ServiceRequestData)) as ServiceRequestData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData create() => ServiceRequestData._();
  ServiceRequestData createEmptyInstance() => create();
  static $pb.PbList<ServiceRequestData> createRepeated() => $pb.PbList<ServiceRequestData>();
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceRequestData>(create);
  static ServiceRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestor => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get provider => $_getSZ(2);
  @$pb.TagNumber(3)
  set provider($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => clearField(3);

  @$pb.TagNumber(4)
  ServiceRequestData_Location get location => $_getN(3);
  @$pb.TagNumber(4)
  set location(ServiceRequestData_Location v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  ServiceRequestData_Location ensureLocation() => $_ensure(3);

  @$pb.TagNumber(5)
  ServiceRequestData_State get state => $_getN(4);
  @$pb.TagNumber(5)
  set state(ServiceRequestData_State v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(5)
  void clearState() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get title => $_getSZ(5);
  @$pb.TagNumber(6)
  set title($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTitle() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get mediaAttachments => $_getList(7);

  @$pb.TagNumber(9)
  $core.double get rate => $_getN(8);
  @$pb.TagNumber(9)
  set rate($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearRate() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get applicants => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get createdAt => $_getSZ(10);
  @$pb.TagNumber(11)
  set createdAt($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get updatedAt => $_getSZ(11);
  @$pb.TagNumber(12)
  set updatedAt($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdatedAt() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get completedAt => $_getSZ(12);
  @$pb.TagNumber(13)
  set completedAt($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCompletedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearCompletedAt() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get category => $_getSZ(13);
  @$pb.TagNumber(14)
  set category($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCategory() => $_has(13);
  @$pb.TagNumber(14)
  void clearCategory() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get startedAt => $_getSZ(14);
  @$pb.TagNumber(15)
  set startedAt($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasStartedAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearStartedAt() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get timeLimit => $_getN(15);
  @$pb.TagNumber(16)
  set timeLimit($core.double v) { $_setFloat(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTimeLimit() => $_has(15);
  @$pb.TagNumber(16)
  void clearTimeLimit() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get actualPayment => $_getN(16);
  @$pb.TagNumber(17)
  set actualPayment($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasActualPayment() => $_has(16);
  @$pb.TagNumber(17)
  void clearActualPayment() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get date => $_getSZ(17);
  @$pb.TagNumber(18)
  set date($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasDate() => $_has(17);
  @$pb.TagNumber(18)
  void clearDate() => clearField(18);
}

class Create_NewServiceRequestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.NewServiceRequestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<ServiceRequestData_Location>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: ServiceRequestData_Location.create)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rate', $pb.PbFieldType.OF)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaAttachments')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category')
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLimit', $pb.PbFieldType.OF)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..hasRequiredFields = false
  ;

  Create_NewServiceRequestData._() : super();
  factory Create_NewServiceRequestData({
    $core.String? title,
    $core.String? description,
    ServiceRequestData_Location? location,
    $core.double? rate,
    $core.Iterable<$core.String>? mediaAttachments,
    $core.String? category,
    $core.double? timeLimit,
    $core.String? date,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (location != null) {
      _result.location = location;
    }
    if (rate != null) {
      _result.rate = rate;
    }
    if (mediaAttachments != null) {
      _result.mediaAttachments.addAll(mediaAttachments);
    }
    if (category != null) {
      _result.category = category;
    }
    if (timeLimit != null) {
      _result.timeLimit = timeLimit;
    }
    if (date != null) {
      _result.date = date;
    }
    return _result;
  }
  factory Create_NewServiceRequestData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Create_NewServiceRequestData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Create_NewServiceRequestData clone() => Create_NewServiceRequestData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Create_NewServiceRequestData copyWith(void Function(Create_NewServiceRequestData) updates) => super.copyWith((message) => updates(message as Create_NewServiceRequestData)) as Create_NewServiceRequestData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Create_NewServiceRequestData create() => Create_NewServiceRequestData._();
  Create_NewServiceRequestData createEmptyInstance() => create();
  static $pb.PbList<Create_NewServiceRequestData> createRepeated() => $pb.PbList<Create_NewServiceRequestData>();
  @$core.pragma('dart2js:noInline')
  static Create_NewServiceRequestData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Create_NewServiceRequestData>(create);
  static Create_NewServiceRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  ServiceRequestData_Location get location => $_getN(2);
  @$pb.TagNumber(3)
  set location(ServiceRequestData_Location v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  ServiceRequestData_Location ensureLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get rate => $_getN(3);
  @$pb.TagNumber(4)
  set rate($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearRate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get mediaAttachments => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get category => $_getSZ(5);
  @$pb.TagNumber(6)
  set category($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get timeLimit => $_getN(6);
  @$pb.TagNumber(7)
  set timeLimit($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTimeLimit() => $_has(6);
  @$pb.TagNumber(7)
  void clearTimeLimit() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get date => $_getSZ(7);
  @$pb.TagNumber(8)
  set date($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearDate() => clearField(8);
}

class Create_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<Create_NewServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestData', subBuilder: Create_NewServiceRequestData.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestor')
    ..hasRequiredFields = false
  ;

  Create_Request._() : super();
  factory Create_Request({
    Create_NewServiceRequestData? requestData,
    $core.String? requestor,
  }) {
    final _result = create();
    if (requestData != null) {
      _result.requestData = requestData;
    }
    if (requestor != null) {
      _result.requestor = requestor;
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
  Create_NewServiceRequestData get requestData => $_getN(0);
  @$pb.TagNumber(1)
  set requestData(Create_NewServiceRequestData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestData() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestData() => clearField(1);
  @$pb.TagNumber(1)
  Create_NewServiceRequestData ensureRequestData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get requestor => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestor() => clearField(2);
}

class Create_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: ServiceRequestData.create)
    ..hasRequiredFields = false
  ;

  Create_Response._() : super();
  factory Create_Response({
    ServiceRequestData? request,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
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
  ServiceRequestData get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(ServiceRequestData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  ServiceRequestData ensureRequest() => $_ensure(0);
}

class Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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

class Delete_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  Delete_Request._() : super();
  factory Delete_Request({
    $core.String? requestId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
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
}

class Delete_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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

class Get_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..pc<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requests', $pb.PbFieldType.PM, subBuilder: ServiceRequestData.create)
    ..hasRequiredFields = false
  ;

  Get_Response._() : super();
  factory Get_Response({
    $core.Iterable<ServiceRequestData>? requests,
  }) {
    final _result = create();
    if (requests != null) {
      _result.requests.addAll(requests);
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
  $core.List<ServiceRequestData> get requests => $_getList(0);
}

class Get extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  GetById_Request._() : super();
  factory GetById_Request({
    $core.String? requestId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
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
}

class GetById_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: ServiceRequestData.create)
    ..aOM<$1.UserProfile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestor', subBuilder: $1.UserProfile.create)
    ..aOM<$1.UserProfile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider', subBuilder: $1.UserProfile.create)
    ..hasRequiredFields = false
  ;

  GetById_Response._() : super();
  factory GetById_Response({
    ServiceRequestData? request,
    $1.UserProfile? requestor,
    $1.UserProfile? provider,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    if (requestor != null) {
      _result.requestor = requestor;
    }
    if (provider != null) {
      _result.provider = provider;
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
  ServiceRequestData get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(ServiceRequestData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  ServiceRequestData ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.UserProfile get requestor => $_getN(1);
  @$pb.TagNumber(2)
  set requestor($1.UserProfile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestor() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestor() => clearField(2);
  @$pb.TagNumber(2)
  $1.UserProfile ensureRequestor() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.UserProfile get provider => $_getN(2);
  @$pb.TagNumber(3)
  set provider($1.UserProfile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => clearField(3);
  @$pb.TagNumber(3)
  $1.UserProfile ensureProvider() => $_ensure(2);
}

class GetById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  Update_Request._() : super();
  factory Update_Request({
    $core.String? requestId,
    $core.String? body,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
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
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
}

class Update_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: ServiceRequestData.create)
    ..hasRequiredFields = false
  ;

  Update_Response._() : super();
  factory Update_Response({
    ServiceRequestData? request,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
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
  ServiceRequestData get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(ServiceRequestData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  ServiceRequestData ensureRequest() => $_ensure(0);
}

class Update extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
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

class CompleteService_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  CompleteService_Request._() : super();
  factory CompleteService_Request({
    $core.String? requestId,
    $core.String? userId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory CompleteService_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteService_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteService_Request clone() => CompleteService_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteService_Request copyWith(void Function(CompleteService_Request) updates) => super.copyWith((message) => updates(message as CompleteService_Request)) as CompleteService_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompleteService_Request create() => CompleteService_Request._();
  CompleteService_Request createEmptyInstance() => create();
  static $pb.PbList<CompleteService_Request> createRepeated() => $pb.PbList<CompleteService_Request>();
  @$core.pragma('dart2js:noInline')
  static CompleteService_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteService_Request>(create);
  static CompleteService_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class CompleteService_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CompleteService_Response._() : super();
  factory CompleteService_Response() => create();
  factory CompleteService_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteService_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteService_Response clone() => CompleteService_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteService_Response copyWith(void Function(CompleteService_Response) updates) => super.copyWith((message) => updates(message as CompleteService_Response)) as CompleteService_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompleteService_Response create() => CompleteService_Response._();
  CompleteService_Response createEmptyInstance() => create();
  static $pb.PbList<CompleteService_Response> createRepeated() => $pb.PbList<CompleteService_Response>();
  @$core.pragma('dart2js:noInline')
  static CompleteService_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteService_Response>(create);
  static CompleteService_Response? _defaultInstance;
}

class CompleteService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CompleteService._() : super();
  factory CompleteService() => create();
  factory CompleteService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteService clone() => CompleteService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteService copyWith(void Function(CompleteService) updates) => super.copyWith((message) => updates(message as CompleteService)) as CompleteService; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompleteService create() => CompleteService._();
  CompleteService createEmptyInstance() => create();
  static $pb.PbList<CompleteService> createRepeated() => $pb.PbList<CompleteService>();
  @$core.pragma('dart2js:noInline')
  static CompleteService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteService>(create);
  static CompleteService? _defaultInstance;
}

class ApplyProvider_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider')
    ..hasRequiredFields = false
  ;

  ApplyProvider_Request._() : super();
  factory ApplyProvider_Request({
    $core.String? requestId,
    $core.String? provider,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (provider != null) {
      _result.provider = provider;
    }
    return _result;
  }
  factory ApplyProvider_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyProvider_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyProvider_Request clone() => ApplyProvider_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyProvider_Request copyWith(void Function(ApplyProvider_Request) updates) => super.copyWith((message) => updates(message as ApplyProvider_Request)) as ApplyProvider_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyProvider_Request create() => ApplyProvider_Request._();
  ApplyProvider_Request createEmptyInstance() => create();
  static $pb.PbList<ApplyProvider_Request> createRepeated() => $pb.PbList<ApplyProvider_Request>();
  @$core.pragma('dart2js:noInline')
  static ApplyProvider_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyProvider_Request>(create);
  static ApplyProvider_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);
}

class ApplyProvider_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ApplyProvider_Response._() : super();
  factory ApplyProvider_Response() => create();
  factory ApplyProvider_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyProvider_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyProvider_Response clone() => ApplyProvider_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyProvider_Response copyWith(void Function(ApplyProvider_Response) updates) => super.copyWith((message) => updates(message as ApplyProvider_Response)) as ApplyProvider_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyProvider_Response create() => ApplyProvider_Response._();
  ApplyProvider_Response createEmptyInstance() => create();
  static $pb.PbList<ApplyProvider_Response> createRepeated() => $pb.PbList<ApplyProvider_Response>();
  @$core.pragma('dart2js:noInline')
  static ApplyProvider_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyProvider_Response>(create);
  static ApplyProvider_Response? _defaultInstance;
}

class ApplyProvider extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ApplyProvider._() : super();
  factory ApplyProvider() => create();
  factory ApplyProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyProvider clone() => ApplyProvider()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyProvider copyWith(void Function(ApplyProvider) updates) => super.copyWith((message) => updates(message as ApplyProvider)) as ApplyProvider; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ApplyProvider create() => ApplyProvider._();
  ApplyProvider createEmptyInstance() => create();
  static $pb.PbList<ApplyProvider> createRepeated() => $pb.PbList<ApplyProvider>();
  @$core.pragma('dart2js:noInline')
  static ApplyProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyProvider>(create);
  static ApplyProvider? _defaultInstance;
}

class SelectProvider_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'caller')
    ..hasRequiredFields = false
  ;

  SelectProvider_Request._() : super();
  factory SelectProvider_Request({
    $core.String? requestId,
    $core.String? provider,
    $core.String? caller,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (provider != null) {
      _result.provider = provider;
    }
    if (caller != null) {
      _result.caller = caller;
    }
    return _result;
  }
  factory SelectProvider_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelectProvider_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelectProvider_Request clone() => SelectProvider_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelectProvider_Request copyWith(void Function(SelectProvider_Request) updates) => super.copyWith((message) => updates(message as SelectProvider_Request)) as SelectProvider_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SelectProvider_Request create() => SelectProvider_Request._();
  SelectProvider_Request createEmptyInstance() => create();
  static $pb.PbList<SelectProvider_Request> createRepeated() => $pb.PbList<SelectProvider_Request>();
  @$core.pragma('dart2js:noInline')
  static SelectProvider_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelectProvider_Request>(create);
  static SelectProvider_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get caller => $_getSZ(2);
  @$pb.TagNumber(3)
  set caller($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCaller() => $_has(2);
  @$pb.TagNumber(3)
  void clearCaller() => clearField(3);
}

class SelectProvider_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SelectProvider_Response._() : super();
  factory SelectProvider_Response() => create();
  factory SelectProvider_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelectProvider_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelectProvider_Response clone() => SelectProvider_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelectProvider_Response copyWith(void Function(SelectProvider_Response) updates) => super.copyWith((message) => updates(message as SelectProvider_Response)) as SelectProvider_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SelectProvider_Response create() => SelectProvider_Response._();
  SelectProvider_Response createEmptyInstance() => create();
  static $pb.PbList<SelectProvider_Response> createRepeated() => $pb.PbList<SelectProvider_Response>();
  @$core.pragma('dart2js:noInline')
  static SelectProvider_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelectProvider_Response>(create);
  static SelectProvider_Response? _defaultInstance;
}

class SelectProvider extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SelectProvider._() : super();
  factory SelectProvider() => create();
  factory SelectProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelectProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelectProvider clone() => SelectProvider()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelectProvider copyWith(void Function(SelectProvider) updates) => super.copyWith((message) => updates(message as SelectProvider)) as SelectProvider; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SelectProvider create() => SelectProvider._();
  SelectProvider createEmptyInstance() => create();
  static $pb.PbList<SelectProvider> createRepeated() => $pb.PbList<SelectProvider>();
  @$core.pragma('dart2js:noInline')
  static SelectProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelectProvider>(create);
  static SelectProvider? _defaultInstance;
}

class GetAvailable_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAvailable.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<$3.Filter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: $3.Filter.create)
    ..aOM<$3.Range>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', subBuilder: $3.Range.create)
    ..hasRequiredFields = false
  ;

  GetAvailable_Request._() : super();
  factory GetAvailable_Request({
    $3.Filter? filter,
    $3.Range? range,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (range != null) {
      _result.range = range;
    }
    return _result;
  }
  factory GetAvailable_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAvailable_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAvailable_Request clone() => GetAvailable_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAvailable_Request copyWith(void Function(GetAvailable_Request) updates) => super.copyWith((message) => updates(message as GetAvailable_Request)) as GetAvailable_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAvailable_Request create() => GetAvailable_Request._();
  GetAvailable_Request createEmptyInstance() => create();
  static $pb.PbList<GetAvailable_Request> createRepeated() => $pb.PbList<GetAvailable_Request>();
  @$core.pragma('dart2js:noInline')
  static GetAvailable_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAvailable_Request>(create);
  static GetAvailable_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Filter get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter($3.Filter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  $3.Filter ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Range get range => $_getN(1);
  @$pb.TagNumber(2)
  set range($3.Range v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearRange() => clearField(2);
  @$pb.TagNumber(2)
  $3.Range ensureRange() => $_ensure(1);
}

class GetAvailable_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAvailable.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..pc<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requests', $pb.PbFieldType.PM, subBuilder: ServiceRequestData.create)
    ..hasRequiredFields = false
  ;

  GetAvailable_Response._() : super();
  factory GetAvailable_Response({
    $core.Iterable<ServiceRequestData>? requests,
  }) {
    final _result = create();
    if (requests != null) {
      _result.requests.addAll(requests);
    }
    return _result;
  }
  factory GetAvailable_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAvailable_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAvailable_Response clone() => GetAvailable_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAvailable_Response copyWith(void Function(GetAvailable_Response) updates) => super.copyWith((message) => updates(message as GetAvailable_Response)) as GetAvailable_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAvailable_Response create() => GetAvailable_Response._();
  GetAvailable_Response createEmptyInstance() => create();
  static $pb.PbList<GetAvailable_Response> createRepeated() => $pb.PbList<GetAvailable_Response>();
  @$core.pragma('dart2js:noInline')
  static GetAvailable_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAvailable_Response>(create);
  static GetAvailable_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceRequestData> get requests => $_getList(0);
}

class GetAvailable extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAvailable', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAvailable._() : super();
  factory GetAvailable() => create();
  factory GetAvailable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAvailable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAvailable clone() => GetAvailable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAvailable copyWith(void Function(GetAvailable) updates) => super.copyWith((message) => updates(message as GetAvailable)) as GetAvailable; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAvailable create() => GetAvailable._();
  GetAvailable createEmptyInstance() => create();
  static $pb.PbList<GetAvailable> createRepeated() => $pb.PbList<GetAvailable>();
  @$core.pragma('dart2js:noInline')
  static GetAvailable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAvailable>(create);
  static GetAvailable? _defaultInstance;
}

class StartService_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartService.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  StartService_Request._() : super();
  factory StartService_Request({
    $core.String? requestId,
    $core.String? userId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory StartService_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartService_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartService_Request clone() => StartService_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartService_Request copyWith(void Function(StartService_Request) updates) => super.copyWith((message) => updates(message as StartService_Request)) as StartService_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartService_Request create() => StartService_Request._();
  StartService_Request createEmptyInstance() => create();
  static $pb.PbList<StartService_Request> createRepeated() => $pb.PbList<StartService_Request>();
  @$core.pragma('dart2js:noInline')
  static StartService_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartService_Request>(create);
  static StartService_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class StartService_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartService.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartService_Response._() : super();
  factory StartService_Response() => create();
  factory StartService_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartService_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartService_Response clone() => StartService_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartService_Response copyWith(void Function(StartService_Response) updates) => super.copyWith((message) => updates(message as StartService_Response)) as StartService_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartService_Response create() => StartService_Response._();
  StartService_Response createEmptyInstance() => create();
  static $pb.PbList<StartService_Response> createRepeated() => $pb.PbList<StartService_Response>();
  @$core.pragma('dart2js:noInline')
  static StartService_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartService_Response>(create);
  static StartService_Response? _defaultInstance;
}

class StartService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartService', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StartService._() : super();
  factory StartService() => create();
  factory StartService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartService clone() => StartService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartService copyWith(void Function(StartService) updates) => super.copyWith((message) => updates(message as StartService)) as StartService; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartService create() => StartService._();
  StartService createEmptyInstance() => create();
  static $pb.PbList<StartService> createRepeated() => $pb.PbList<StartService>();
  @$core.pragma('dart2js:noInline')
  static StartService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartService>(create);
  static StartService? _defaultInstance;
}

class GetSummaryForUser_SummaryCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSummaryForUser.SummaryCount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asRequestor', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asProvider', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetSummaryForUser_SummaryCount._() : super();
  factory GetSummaryForUser_SummaryCount({
    $core.int? asRequestor,
    $core.int? asProvider,
  }) {
    final _result = create();
    if (asRequestor != null) {
      _result.asRequestor = asRequestor;
    }
    if (asProvider != null) {
      _result.asProvider = asProvider;
    }
    return _result;
  }
  factory GetSummaryForUser_SummaryCount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryForUser_SummaryCount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_SummaryCount clone() => GetSummaryForUser_SummaryCount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_SummaryCount copyWith(void Function(GetSummaryForUser_SummaryCount) updates) => super.copyWith((message) => updates(message as GetSummaryForUser_SummaryCount)) as GetSummaryForUser_SummaryCount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_SummaryCount create() => GetSummaryForUser_SummaryCount._();
  GetSummaryForUser_SummaryCount createEmptyInstance() => create();
  static $pb.PbList<GetSummaryForUser_SummaryCount> createRepeated() => $pb.PbList<GetSummaryForUser_SummaryCount>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_SummaryCount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryForUser_SummaryCount>(create);
  static GetSummaryForUser_SummaryCount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get asRequestor => $_getIZ(0);
  @$pb.TagNumber(1)
  set asRequestor($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAsRequestor() => $_has(0);
  @$pb.TagNumber(1)
  void clearAsRequestor() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get asProvider => $_getIZ(1);
  @$pb.TagNumber(2)
  set asProvider($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAsProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearAsProvider() => clearField(2);
}

class GetSummaryForUser_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSummaryForUser.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  GetSummaryForUser_Request._() : super();
  factory GetSummaryForUser_Request({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetSummaryForUser_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryForUser_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_Request clone() => GetSummaryForUser_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_Request copyWith(void Function(GetSummaryForUser_Request) updates) => super.copyWith((message) => updates(message as GetSummaryForUser_Request)) as GetSummaryForUser_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_Request create() => GetSummaryForUser_Request._();
  GetSummaryForUser_Request createEmptyInstance() => create();
  static $pb.PbList<GetSummaryForUser_Request> createRepeated() => $pb.PbList<GetSummaryForUser_Request>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryForUser_Request>(create);
  static GetSummaryForUser_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetSummaryForUser_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSummaryForUser.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..aOM<GetSummaryForUser_SummaryCount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pending', subBuilder: GetSummaryForUser_SummaryCount.create)
    ..aOM<GetSummaryForUser_SummaryCount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accepted', subBuilder: GetSummaryForUser_SummaryCount.create)
    ..aOM<GetSummaryForUser_SummaryCount>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ongoing', subBuilder: GetSummaryForUser_SummaryCount.create)
    ..aOM<GetSummaryForUser_SummaryCount>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completed', subBuilder: GetSummaryForUser_SummaryCount.create)
    ..hasRequiredFields = false
  ;

  GetSummaryForUser_Response._() : super();
  factory GetSummaryForUser_Response({
    GetSummaryForUser_SummaryCount? pending,
    GetSummaryForUser_SummaryCount? accepted,
    GetSummaryForUser_SummaryCount? ongoing,
    GetSummaryForUser_SummaryCount? completed,
  }) {
    final _result = create();
    if (pending != null) {
      _result.pending = pending;
    }
    if (accepted != null) {
      _result.accepted = accepted;
    }
    if (ongoing != null) {
      _result.ongoing = ongoing;
    }
    if (completed != null) {
      _result.completed = completed;
    }
    return _result;
  }
  factory GetSummaryForUser_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryForUser_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_Response clone() => GetSummaryForUser_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryForUser_Response copyWith(void Function(GetSummaryForUser_Response) updates) => super.copyWith((message) => updates(message as GetSummaryForUser_Response)) as GetSummaryForUser_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_Response create() => GetSummaryForUser_Response._();
  GetSummaryForUser_Response createEmptyInstance() => create();
  static $pb.PbList<GetSummaryForUser_Response> createRepeated() => $pb.PbList<GetSummaryForUser_Response>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryForUser_Response>(create);
  static GetSummaryForUser_Response? _defaultInstance;

  @$pb.TagNumber(1)
  GetSummaryForUser_SummaryCount get pending => $_getN(0);
  @$pb.TagNumber(1)
  set pending(GetSummaryForUser_SummaryCount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPending() => $_has(0);
  @$pb.TagNumber(1)
  void clearPending() => clearField(1);
  @$pb.TagNumber(1)
  GetSummaryForUser_SummaryCount ensurePending() => $_ensure(0);

  @$pb.TagNumber(2)
  GetSummaryForUser_SummaryCount get accepted => $_getN(1);
  @$pb.TagNumber(2)
  set accepted(GetSummaryForUser_SummaryCount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccepted() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccepted() => clearField(2);
  @$pb.TagNumber(2)
  GetSummaryForUser_SummaryCount ensureAccepted() => $_ensure(1);

  @$pb.TagNumber(3)
  GetSummaryForUser_SummaryCount get ongoing => $_getN(2);
  @$pb.TagNumber(3)
  set ongoing(GetSummaryForUser_SummaryCount v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOngoing() => $_has(2);
  @$pb.TagNumber(3)
  void clearOngoing() => clearField(3);
  @$pb.TagNumber(3)
  GetSummaryForUser_SummaryCount ensureOngoing() => $_ensure(2);

  @$pb.TagNumber(4)
  GetSummaryForUser_SummaryCount get completed => $_getN(3);
  @$pb.TagNumber(4)
  set completed(GetSummaryForUser_SummaryCount v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCompleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompleted() => clearField(4);
  @$pb.TagNumber(4)
  GetSummaryForUser_SummaryCount ensureCompleted() => $_ensure(3);
}

class GetSummaryForUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSummaryForUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSummaryForUser._() : super();
  factory GetSummaryForUser() => create();
  factory GetSummaryForUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSummaryForUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSummaryForUser clone() => GetSummaryForUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSummaryForUser copyWith(void Function(GetSummaryForUser) updates) => super.copyWith((message) => updates(message as GetSummaryForUser)) as GetSummaryForUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser create() => GetSummaryForUser._();
  GetSummaryForUser createEmptyInstance() => create();
  static $pb.PbList<GetSummaryForUser> createRepeated() => $pb.PbList<GetSummaryForUser>();
  @$core.pragma('dart2js:noInline')
  static GetSummaryForUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSummaryForUser>(create);
  static GetSummaryForUser? _defaultInstance;
}

