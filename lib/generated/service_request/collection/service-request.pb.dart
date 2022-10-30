///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'service-request.pbenum.dart';

export 'service-request.pbenum.dart';

class ServiceRequestData_Details extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData.Details', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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

class ServiceRequestData_Location_Coordinate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData.Location.Coordinate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude')
    ..hasRequiredFields = false
  ;

  ServiceRequestData_Location_Coordinate._() : super();
  factory ServiceRequestData_Location_Coordinate({
    $core.String? latitude,
    $core.String? longitude,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory ServiceRequestData_Location_Coordinate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceRequestData_Location_Coordinate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Location_Coordinate clone() => ServiceRequestData_Location_Coordinate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceRequestData_Location_Coordinate copyWith(void Function(ServiceRequestData_Location_Coordinate) updates) => super.copyWith((message) => updates(message as ServiceRequestData_Location_Coordinate)) as ServiceRequestData_Location_Coordinate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Location_Coordinate create() => ServiceRequestData_Location_Coordinate._();
  ServiceRequestData_Location_Coordinate createEmptyInstance() => create();
  static $pb.PbList<ServiceRequestData_Location_Coordinate> createRepeated() => $pb.PbList<ServiceRequestData_Location_Coordinate>();
  @$core.pragma('dart2js:noInline')
  static ServiceRequestData_Location_Coordinate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceRequestData_Location_Coordinate>(create);
  static ServiceRequestData_Location_Coordinate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get latitude => $_getSZ(0);
  @$pb.TagNumber(1)
  set latitude($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longitude => $_getSZ(1);
  @$pb.TagNumber(2)
  set longitude($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);
}

class ServiceRequestData_Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData.Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<ServiceRequestData_Location_Coordinate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinate', subBuilder: ServiceRequestData_Location_Coordinate.create)
    ..hasRequiredFields = false
  ;

  ServiceRequestData_Location._() : super();
  factory ServiceRequestData_Location({
    $core.String? name,
    ServiceRequestData_Location_Coordinate? coordinate,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (coordinate != null) {
      _result.coordinate = coordinate;
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  ServiceRequestData_Location_Coordinate get coordinate => $_getN(1);
  @$pb.TagNumber(2)
  set coordinate(ServiceRequestData_Location_Coordinate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoordinate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoordinate() => clearField(2);
  @$pb.TagNumber(2)
  ServiceRequestData_Location_Coordinate ensureCoordinate() => $_ensure(1);
}

class ServiceRequestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceRequestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestor')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider')
    ..aOM<ServiceRequestData_Location>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: ServiceRequestData_Location.create)
    ..e<ServiceRequestData_State>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: ServiceRequestData_State.PENDING, valueOf: ServiceRequestData_State.valueOf, enumValues: ServiceRequestData_State.values)
    ..aOM<ServiceRequestData_Details>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: ServiceRequestData_Details.create)
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaAttachments')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rate', $pb.PbFieldType.OF)
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicants')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt')
    ..hasRequiredFields = false
  ;

  ServiceRequestData._() : super();
  factory ServiceRequestData({
    $core.String? id,
    $core.String? requestor,
    $core.String? provider,
    ServiceRequestData_Location? location,
    ServiceRequestData_State? state,
    ServiceRequestData_Details? details,
    $core.Iterable<$core.String>? mediaAttachments,
    $core.double? rate,
    $core.Iterable<$core.String>? applicants,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? completedAt,
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
    if (details != null) {
      _result.details = details;
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
  ServiceRequestData_Details get details => $_getN(5);
  @$pb.TagNumber(6)
  set details(ServiceRequestData_Details v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDetails() => $_has(5);
  @$pb.TagNumber(6)
  void clearDetails() => clearField(6);
  @$pb.TagNumber(6)
  ServiceRequestData_Details ensureDetails() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get mediaAttachments => $_getList(6);

  @$pb.TagNumber(8)
  $core.double get rate => $_getN(7);
  @$pb.TagNumber(8)
  set rate($core.double v) { $_setFloat(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearRate() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get applicants => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get createdAt => $_getSZ(9);
  @$pb.TagNumber(10)
  set createdAt($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get updatedAt => $_getSZ(10);
  @$pb.TagNumber(11)
  set updatedAt($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get completedAt => $_getSZ(11);
  @$pb.TagNumber(12)
  set completedAt($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCompletedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCompletedAt() => clearField(12);
}

class Create_NewServiceRequestData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.NewServiceRequestData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceRequestData_Details>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: ServiceRequestData_Details.create)
    ..aOM<ServiceRequestData_Location>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: ServiceRequestData_Location.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rate', $pb.PbFieldType.OF)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaAttachments')
    ..hasRequiredFields = false
  ;

  Create_NewServiceRequestData._() : super();
  factory Create_NewServiceRequestData({
    ServiceRequestData_Details? details,
    ServiceRequestData_Location? location,
    $core.double? rate,
    $core.Iterable<$core.String>? mediaAttachments,
  }) {
    final _result = create();
    if (details != null) {
      _result.details = details;
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
  ServiceRequestData_Details get details => $_getN(0);
  @$pb.TagNumber(1)
  set details(ServiceRequestData_Details v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetails() => clearField(1);
  @$pb.TagNumber(1)
  ServiceRequestData_Details ensureDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  ServiceRequestData_Location get location => $_getN(1);
  @$pb.TagNumber(2)
  set location(ServiceRequestData_Location v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
  @$pb.TagNumber(2)
  ServiceRequestData_Location ensureLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get rate => $_getN(2);
  @$pb.TagNumber(3)
  set rate($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRate() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get mediaAttachments => $_getList(3);
}

class Create_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Create', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Delete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Get', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceRequestData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: ServiceRequestData.create)
    ..hasRequiredFields = false
  ;

  GetById_Response._() : super();
  factory GetById_Response({
    ServiceRequestData? request,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
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
}

class GetById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetById', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Update', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompleteService', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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

class ServiceCommitmentData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceCommitmentData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestor')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OU3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isCompleted')
    ..hasRequiredFields = false
  ;

  ServiceCommitmentData._() : super();
  factory ServiceCommitmentData({
    $core.String? requestor,
    $core.String? provider,
    $core.int? amount,
    $core.bool? isCompleted,
  }) {
    final _result = create();
    if (requestor != null) {
      _result.requestor = requestor;
    }
    if (provider != null) {
      _result.provider = provider;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (isCompleted != null) {
      _result.isCompleted = isCompleted;
    }
    return _result;
  }
  factory ServiceCommitmentData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCommitmentData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCommitmentData clone() => ServiceCommitmentData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCommitmentData copyWith(void Function(ServiceCommitmentData) updates) => super.copyWith((message) => updates(message as ServiceCommitmentData)) as ServiceCommitmentData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceCommitmentData create() => ServiceCommitmentData._();
  ServiceCommitmentData createEmptyInstance() => create();
  static $pb.PbList<ServiceCommitmentData> createRepeated() => $pb.PbList<ServiceCommitmentData>();
  @$core.pragma('dart2js:noInline')
  static ServiceCommitmentData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCommitmentData>(create);
  static ServiceCommitmentData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestor => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestor($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestor() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestor() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCompleted => $_getBF(3);
  @$pb.TagNumber(4)
  set isCompleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCompleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCompleted() => clearField(4);
}

class GetCommitment_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommitment.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..hasRequiredFields = false
  ;

  GetCommitment_Request._() : super();
  factory GetCommitment_Request({
    $core.String? requestId,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    return _result;
  }
  factory GetCommitment_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommitment_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommitment_Request clone() => GetCommitment_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommitment_Request copyWith(void Function(GetCommitment_Request) updates) => super.copyWith((message) => updates(message as GetCommitment_Request)) as GetCommitment_Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommitment_Request create() => GetCommitment_Request._();
  GetCommitment_Request createEmptyInstance() => create();
  static $pb.PbList<GetCommitment_Request> createRepeated() => $pb.PbList<GetCommitment_Request>();
  @$core.pragma('dart2js:noInline')
  static GetCommitment_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommitment_Request>(create);
  static GetCommitment_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);
}

class GetCommitment_Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommitment.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..aOM<ServiceCommitmentData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitment', subBuilder: ServiceCommitmentData.create)
    ..hasRequiredFields = false
  ;

  GetCommitment_Response._() : super();
  factory GetCommitment_Response({
    ServiceCommitmentData? commitment,
  }) {
    final _result = create();
    if (commitment != null) {
      _result.commitment = commitment;
    }
    return _result;
  }
  factory GetCommitment_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommitment_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommitment_Response clone() => GetCommitment_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommitment_Response copyWith(void Function(GetCommitment_Response) updates) => super.copyWith((message) => updates(message as GetCommitment_Response)) as GetCommitment_Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommitment_Response create() => GetCommitment_Response._();
  GetCommitment_Response createEmptyInstance() => create();
  static $pb.PbList<GetCommitment_Response> createRepeated() => $pb.PbList<GetCommitment_Response>();
  @$core.pragma('dart2js:noInline')
  static GetCommitment_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommitment_Response>(create);
  static GetCommitment_Response? _defaultInstance;

  @$pb.TagNumber(1)
  ServiceCommitmentData get commitment => $_getN(0);
  @$pb.TagNumber(1)
  set commitment(ServiceCommitmentData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommitment() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommitment() => clearField(1);
  @$pb.TagNumber(1)
  ServiceCommitmentData ensureCommitment() => $_ensure(0);
}

class GetCommitment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCommitment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetCommitment._() : super();
  factory GetCommitment() => create();
  factory GetCommitment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCommitment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCommitment clone() => GetCommitment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCommitment copyWith(void Function(GetCommitment) updates) => super.copyWith((message) => updates(message as GetCommitment)) as GetCommitment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCommitment create() => GetCommitment._();
  GetCommitment createEmptyInstance() => create();
  static $pb.PbList<GetCommitment> createRepeated() => $pb.PbList<GetCommitment>();
  @$core.pragma('dart2js:noInline')
  static GetCommitment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCommitment>(create);
  static GetCommitment? _defaultInstance;
}

class ApplyProvider_Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ApplyProvider', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider.Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider.Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SelectProvider', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'timebank.servicerequest'), createEmptyInstance: create)
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

