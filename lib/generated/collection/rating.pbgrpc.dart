///
//  Generated code. Do not modify.
//  source: collection/rating.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rating.pb.dart' as $0;
export 'rating.pb.dart';

class RatingClient extends $grpc.Client {
  static final _$createForRequestor =
      $grpc.ClientMethod<$0.Create_Request, $0.Create_Response>(
          '/rating.Rating/createForRequestor',
          ($0.Create_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Create_Response.fromBuffer(value));
  static final _$createForProvider =
      $grpc.ClientMethod<$0.Create_Request, $0.Create_Response>(
          '/rating.Rating/createForProvider',
          ($0.Create_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Create_Response.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.Get_Request, $0.Get_Response>(
      '/rating.Rating/get',
      ($0.Get_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Get_Response.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$0.Update_Request, $0.Update_Response>(
          '/rating.Rating/update',
          ($0.Update_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Update_Response.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.Delete_Request, $0.Delete_Response>(
          '/rating.Rating/delete',
          ($0.Delete_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Delete_Response.fromBuffer(value));

  RatingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Create_Response> createForRequestor(
      $0.Create_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createForRequestor, request, options: options);
  }

  $grpc.ResponseFuture<$0.Create_Response> createForProvider(
      $0.Create_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createForProvider, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_Response> get($0.Get_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.Update_Response> update($0.Update_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Delete_Response> delete($0.Delete_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class RatingServiceBase extends $grpc.Service {
  $core.String get $name => 'rating.Rating';

  RatingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Create_Request, $0.Create_Response>(
        'createForRequestor',
        createForRequestor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Create_Request.fromBuffer(value),
        ($0.Create_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Create_Request, $0.Create_Response>(
        'createForProvider',
        createForProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Create_Request.fromBuffer(value),
        ($0.Create_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Get_Request, $0.Get_Response>(
        'get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Get_Request.fromBuffer(value),
        ($0.Get_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Update_Request, $0.Update_Response>(
        'update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Update_Request.fromBuffer(value),
        ($0.Update_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Delete_Request, $0.Delete_Response>(
        'delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Delete_Request.fromBuffer(value),
        ($0.Delete_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Create_Response> createForRequestor_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Create_Request> request) async {
    return createForRequestor(call, await request);
  }

  $async.Future<$0.Create_Response> createForProvider_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Create_Request> request) async {
    return createForProvider(call, await request);
  }

  $async.Future<$0.Get_Response> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Get_Request> request) async {
    return get(call, await request);
  }

  $async.Future<$0.Update_Response> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Update_Request> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Delete_Response> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Delete_Request> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.Create_Response> createForRequestor(
      $grpc.ServiceCall call, $0.Create_Request request);
  $async.Future<$0.Create_Response> createForProvider(
      $grpc.ServiceCall call, $0.Create_Request request);
  $async.Future<$0.Get_Response> get(
      $grpc.ServiceCall call, $0.Get_Request request);
  $async.Future<$0.Update_Response> update(
      $grpc.ServiceCall call, $0.Update_Request request);
  $async.Future<$0.Delete_Response> delete(
      $grpc.ServiceCall call, $0.Delete_Request request);
}
