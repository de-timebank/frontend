///
//  Generated code. Do not modify.
//  source: collection/service-request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service-request.pb.dart' as $1;
export 'service-request.pb.dart';

class ServiceRequestClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$1.Create_Request, $1.Create_Response>(
          '/timebank.servicerequest.ServiceRequest/create',
          ($1.Create_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.Create_Response.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$1.Get_Request, $1.Get_Response>(
      '/timebank.servicerequest.ServiceRequest/get',
      ($1.Get_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Get_Response.fromBuffer(value));
  static final _$getById =
      $grpc.ClientMethod<$1.GetById_Request, $1.GetById_Response>(
          '/timebank.servicerequest.ServiceRequest/getById',
          ($1.GetById_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetById_Response.fromBuffer(value));
  static final _$getAvailable =
      $grpc.ClientMethod<$1.GetAvailable_Request, $1.GetAvailable_Response>(
          '/timebank.servicerequest.ServiceRequest/getAvailable',
          ($1.GetAvailable_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetAvailable_Response.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$1.Update_Request, $1.Update_Response>(
          '/timebank.servicerequest.ServiceRequest/update',
          ($1.Update_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.Update_Response.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$1.Delete_Request, $1.Delete_Response>(
          '/timebank.servicerequest.ServiceRequest/delete',
          ($1.Delete_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.Delete_Response.fromBuffer(value));
  static final _$applyProvider =
      $grpc.ClientMethod<$1.ApplyProvider_Request, $1.ApplyProvider_Response>(
          '/timebank.servicerequest.ServiceRequest/applyProvider',
          ($1.ApplyProvider_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ApplyProvider_Response.fromBuffer(value));
  static final _$selectProvider =
      $grpc.ClientMethod<$1.SelectProvider_Request, $1.SelectProvider_Response>(
          '/timebank.servicerequest.ServiceRequest/selectProvider',
          ($1.SelectProvider_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SelectProvider_Response.fromBuffer(value));
  static final _$startService =
      $grpc.ClientMethod<$1.StartService_Request, $1.StartService_Response>(
          '/timebank.servicerequest.ServiceRequest/startService',
          ($1.StartService_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.StartService_Response.fromBuffer(value));
  static final _$completeService = $grpc.ClientMethod<
          $1.CompleteService_Request, $1.CompleteService_Response>(
      '/timebank.servicerequest.ServiceRequest/completeService',
      ($1.CompleteService_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CompleteService_Response.fromBuffer(value));
  static final _$getCommitment =
      $grpc.ClientMethod<$1.GetCommitment_Request, $1.GetCommitment_Response>(
          '/timebank.servicerequest.ServiceRequest/getCommitment',
          ($1.GetCommitment_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetCommitment_Response.fromBuffer(value));

  ServiceRequestClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Create_Response> create($1.Create_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$1.Get_Response> get($1.Get_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetById_Response> getById($1.GetById_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetAvailable_Response> getAvailable(
      $1.GetAvailable_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAvailable, request, options: options);
  }

  $grpc.ResponseFuture<$1.Update_Response> update($1.Update_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Delete_Response> delete($1.Delete_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$1.ApplyProvider_Response> applyProvider(
      $1.ApplyProvider_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyProvider, request, options: options);
  }

  $grpc.ResponseFuture<$1.SelectProvider_Response> selectProvider(
      $1.SelectProvider_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$selectProvider, request, options: options);
  }

  $grpc.ResponseFuture<$1.StartService_Response> startService(
      $1.StartService_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startService, request, options: options);
  }

  $grpc.ResponseFuture<$1.CompleteService_Response> completeService(
      $1.CompleteService_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeService, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCommitment_Response> getCommitment(
      $1.GetCommitment_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCommitment, request, options: options);
  }
}

abstract class ServiceRequestServiceBase extends $grpc.Service {
  $core.String get $name => 'timebank.servicerequest.ServiceRequest';

  ServiceRequestServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Create_Request, $1.Create_Response>(
        'create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Create_Request.fromBuffer(value),
        ($1.Create_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Get_Request, $1.Get_Response>(
        'get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Get_Request.fromBuffer(value),
        ($1.Get_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetById_Request, $1.GetById_Response>(
        'getById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetById_Request.fromBuffer(value),
        ($1.GetById_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetAvailable_Request, $1.GetAvailable_Response>(
            'getAvailable',
            getAvailable_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetAvailable_Request.fromBuffer(value),
            ($1.GetAvailable_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Update_Request, $1.Update_Response>(
        'update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Update_Request.fromBuffer(value),
        ($1.Update_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Delete_Request, $1.Delete_Response>(
        'delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Delete_Request.fromBuffer(value),
        ($1.Delete_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ApplyProvider_Request,
            $1.ApplyProvider_Response>(
        'applyProvider',
        applyProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ApplyProvider_Request.fromBuffer(value),
        ($1.ApplyProvider_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SelectProvider_Request,
            $1.SelectProvider_Response>(
        'selectProvider',
        selectProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SelectProvider_Request.fromBuffer(value),
        ($1.SelectProvider_Response value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.StartService_Request, $1.StartService_Response>(
            'startService',
            startService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.StartService_Request.fromBuffer(value),
            ($1.StartService_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CompleteService_Request,
            $1.CompleteService_Response>(
        'completeService',
        completeService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CompleteService_Request.fromBuffer(value),
        ($1.CompleteService_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCommitment_Request,
            $1.GetCommitment_Response>(
        'getCommitment',
        getCommitment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetCommitment_Request.fromBuffer(value),
        ($1.GetCommitment_Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.Create_Response> create_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Create_Request> request) async {
    return create(call, await request);
  }

  $async.Future<$1.Get_Response> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Get_Request> request) async {
    return get(call, await request);
  }

  $async.Future<$1.GetById_Response> getById_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetById_Request> request) async {
    return getById(call, await request);
  }

  $async.Future<$1.GetAvailable_Response> getAvailable_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetAvailable_Request> request) async {
    return getAvailable(call, await request);
  }

  $async.Future<$1.Update_Response> update_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Update_Request> request) async {
    return update(call, await request);
  }

  $async.Future<$1.Delete_Response> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Delete_Request> request) async {
    return delete(call, await request);
  }

  $async.Future<$1.ApplyProvider_Response> applyProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ApplyProvider_Request> request) async {
    return applyProvider(call, await request);
  }

  $async.Future<$1.SelectProvider_Response> selectProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SelectProvider_Request> request) async {
    return selectProvider(call, await request);
  }

  $async.Future<$1.StartService_Response> startService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.StartService_Request> request) async {
    return startService(call, await request);
  }

  $async.Future<$1.CompleteService_Response> completeService_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CompleteService_Request> request) async {
    return completeService(call, await request);
  }

  $async.Future<$1.GetCommitment_Response> getCommitment_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetCommitment_Request> request) async {
    return getCommitment(call, await request);
  }

  $async.Future<$1.Create_Response> create(
      $grpc.ServiceCall call, $1.Create_Request request);
  $async.Future<$1.Get_Response> get(
      $grpc.ServiceCall call, $1.Get_Request request);
  $async.Future<$1.GetById_Response> getById(
      $grpc.ServiceCall call, $1.GetById_Request request);
  $async.Future<$1.GetAvailable_Response> getAvailable(
      $grpc.ServiceCall call, $1.GetAvailable_Request request);
  $async.Future<$1.Update_Response> update(
      $grpc.ServiceCall call, $1.Update_Request request);
  $async.Future<$1.Delete_Response> delete(
      $grpc.ServiceCall call, $1.Delete_Request request);
  $async.Future<$1.ApplyProvider_Response> applyProvider(
      $grpc.ServiceCall call, $1.ApplyProvider_Request request);
  $async.Future<$1.SelectProvider_Response> selectProvider(
      $grpc.ServiceCall call, $1.SelectProvider_Request request);
  $async.Future<$1.StartService_Response> startService(
      $grpc.ServiceCall call, $1.StartService_Request request);
  $async.Future<$1.CompleteService_Response> completeService(
      $grpc.ServiceCall call, $1.CompleteService_Request request);
  $async.Future<$1.GetCommitment_Response> getCommitment(
      $grpc.ServiceCall call, $1.GetCommitment_Request request);
}
