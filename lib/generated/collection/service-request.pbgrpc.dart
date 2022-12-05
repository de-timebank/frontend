///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service-request.pb.dart' as $2;
export 'service-request.pb.dart';

class ServiceRequestClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$2.Create_Request, $2.Create_Response>(
          '/timebank.servicerequest.ServiceRequest/create',
          ($2.Create_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.Create_Response.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$2.Get_Request, $2.Get_Response>(
      '/timebank.servicerequest.ServiceRequest/get',
      ($2.Get_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Get_Response.fromBuffer(value));
  static final _$getById =
      $grpc.ClientMethod<$2.GetById_Request, $2.GetById_Response>(
          '/timebank.servicerequest.ServiceRequest/getById',
          ($2.GetById_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetById_Response.fromBuffer(value));
  static final _$getAvailable =
      $grpc.ClientMethod<$2.GetAvailable_Request, $2.GetAvailable_Response>(
          '/timebank.servicerequest.ServiceRequest/getAvailable',
          ($2.GetAvailable_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetAvailable_Response.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$2.Update_Request, $2.Update_Response>(
          '/timebank.servicerequest.ServiceRequest/update',
          ($2.Update_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.Update_Response.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$2.Delete_Request, $2.Delete_Response>(
          '/timebank.servicerequest.ServiceRequest/delete',
          ($2.Delete_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.Delete_Response.fromBuffer(value));
  static final _$applyProvider =
      $grpc.ClientMethod<$2.ApplyProvider_Request, $2.ApplyProvider_Response>(
          '/timebank.servicerequest.ServiceRequest/applyProvider',
          ($2.ApplyProvider_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ApplyProvider_Response.fromBuffer(value));
  static final _$selectProvider =
      $grpc.ClientMethod<$2.SelectProvider_Request, $2.SelectProvider_Response>(
          '/timebank.servicerequest.ServiceRequest/selectProvider',
          ($2.SelectProvider_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SelectProvider_Response.fromBuffer(value));
  static final _$startService =
      $grpc.ClientMethod<$2.StartService_Request, $2.StartService_Response>(
          '/timebank.servicerequest.ServiceRequest/startService',
          ($2.StartService_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.StartService_Response.fromBuffer(value));
  static final _$completeService = $grpc.ClientMethod<
          $2.CompleteService_Request, $2.CompleteService_Response>(
      '/timebank.servicerequest.ServiceRequest/completeService',
      ($2.CompleteService_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.CompleteService_Response.fromBuffer(value));

  ServiceRequestClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.Create_Response> create($2.Create_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.Get_Response> get($2.Get_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetById_Response> getById($2.GetById_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetAvailable_Response> getAvailable(
      $2.GetAvailable_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAvailable, request, options: options);
  }

  $grpc.ResponseFuture<$2.Update_Response> update($2.Update_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$2.Delete_Response> delete($2.Delete_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$2.ApplyProvider_Response> applyProvider(
      $2.ApplyProvider_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.SelectProvider_Response> selectProvider(
      $2.SelectProvider_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$selectProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.StartService_Response> startService(
      $2.StartService_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startService, request, options: options);
  }

  $grpc.ResponseFuture<$2.CompleteService_Response> completeService(
      $2.CompleteService_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeService, request, options: options);
  }
}

abstract class ServiceRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'timebank.servicerequest.ServiceRequest';

  ServiceRequestServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Create_Request, $2.Create_Response>(
        'create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Create_Request.fromBuffer(value),
        ($2.Create_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Get_Request, $2.Get_Response>(
        'get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Get_Request.fromBuffer(value),
        ($2.Get_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetById_Request, $2.GetById_Response>(
        'getById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetById_Request.fromBuffer(value),
        ($2.GetById_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetAvailable_Request, $2.GetAvailable_Response>(
            'getAvailable',
            getAvailable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetAvailable_Request.fromBuffer(value),
            ($2.GetAvailable_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Update_Request, $2.Update_Response>(
        'update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Update_Request.fromBuffer(value),
        ($2.Update_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Delete_Request, $2.Delete_Response>(
        'delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Delete_Request.fromBuffer(value),
        ($2.Delete_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ApplyProvider_Request,
            $2.ApplyProvider_Response>(
        'applyProvider',
        applyProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ApplyProvider_Request.fromBuffer(value),
        ($2.ApplyProvider_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SelectProvider_Request,
            $2.SelectProvider_Response>(
        'selectProvider',
        selectProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.SelectProvider_Request.fromBuffer(value),
        ($2.SelectProvider_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.StartService_Request, $2.StartService_Response>(
            'startService',
            startService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.StartService_Request.fromBuffer(value),
            ($2.StartService_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CompleteService_Request,
            $2.CompleteService_Response>(
        'completeService',
        completeService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CompleteService_Request.fromBuffer(value),
        ($2.CompleteService_Response value) => value.writeToBuffer()));
  }

  $async.Future<$2.Create_Response> create_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Create_Request> request) async {
    return create(call, await request);
  }

  $async.Future<$2.Get_Response> get_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Get_Request> request) async {
    return get(call, await request);
  }

  $async.Future<$2.GetById_Response> getById_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetById_Request> request) async {
    return getById(call, await request);
  }

  $async.Future<$2.GetAvailable_Response> getAvailable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetAvailable_Request> request) async {
    return getAvailable(call, await request);
  }

  $async.Future<$2.Update_Response> update_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Update_Request> request) async {
    return update(call, await request);
  }

  $async.Future<$2.Delete_Response> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Delete_Request> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.ApplyProvider_Response> applyProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ApplyProvider_Request> request) async {
    return applyProvider(call, await request);
  }

  $async.Future<$2.SelectProvider_Response> selectProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.SelectProvider_Request> request) async {
    return selectProvider(call, await request);
  }

  $async.Future<$2.StartService_Response> startService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.StartService_Request> request) async {
    return startService(call, await request);
  }

  $async.Future<$2.CompleteService_Response> completeService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CompleteService_Request> request) async {
    return completeService(call, await request);
  }

  $async.Future<$2.Create_Response> create(
      $grpc.ServiceCall call, $2.Create_Request request);
  $async.Future<$2.Get_Response> get(
      $grpc.ServiceCall call, $2.Get_Request request);
  $async.Future<$2.GetById_Response> getById(
      $grpc.ServiceCall call, $2.GetById_Request request);
  $async.Future<$2.GetAvailable_Response> getAvailable(
      $grpc.ServiceCall call, $2.GetAvailable_Request request);
  $async.Future<$2.Update_Response> update(
      $grpc.ServiceCall call, $2.Update_Request request);
  $async.Future<$2.Delete_Response> delete(
      $grpc.ServiceCall call, $2.Delete_Request request);
  $async.Future<$2.ApplyProvider_Response> applyProvider(
      $grpc.ServiceCall call, $2.ApplyProvider_Request request);
  $async.Future<$2.SelectProvider_Response> selectProvider(
      $grpc.ServiceCall call, $2.SelectProvider_Request request);
  $async.Future<$2.StartService_Response> startService(
      $grpc.ServiceCall call, $2.StartService_Request request);
  $async.Future<$2.CompleteService_Response> completeService(
      $grpc.ServiceCall call, $2.CompleteService_Request request);
}
