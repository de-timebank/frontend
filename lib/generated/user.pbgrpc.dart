///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $1;
export 'user.pb.dart';

class UserClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$1.Get_Request, $1.Get_Response>(
      '/timebank.user.User/get',
      ($1.Get_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Get_Response.fromBuffer(value));
  static final _$getById =
      $grpc.ClientMethod<$1.GetById_Request, $1.GetById_Response>(
          '/timebank.user.User/getById',
          ($1.GetById_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetById_Response.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$1.Update_Request, $1.Update_Response>(
          '/timebank.user.User/update',
          ($1.Update_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.Update_Response.fromBuffer(value));
  static final _$getRating =
      $grpc.ClientMethod<$1.GetRating_Request, $1.GetRating_Response>(
          '/timebank.user.User/getRating',
          ($1.GetRating_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetRating_Response.fromBuffer(value));
  static final _$getCreditBalance = $grpc.ClientMethod<
          $1.GetCreditBalance_Request, $1.GetCreditBalance_Response>(
      '/timebank.user.User/getCreditBalance',
      ($1.GetCreditBalance_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetCreditBalance_Response.fromBuffer(value));

  UserClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Get_Response> get($1.Get_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetById_Response> getById($1.GetById_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$1.Update_Response> update($1.Update_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRating_Response> getRating(
      $1.GetRating_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRating, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetCreditBalance_Response> getCreditBalance(
      $1.GetCreditBalance_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCreditBalance, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'timebank.user.User';

  UserServiceBase() {
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
    $addMethod($grpc.ServiceMethod<$1.Update_Request, $1.Update_Response>(
        'update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Update_Request.fromBuffer(value),
        ($1.Update_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRating_Request, $1.GetRating_Response>(
        'getRating',
        getRating_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRating_Request.fromBuffer(value),
        ($1.GetRating_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetCreditBalance_Request,
            $1.GetCreditBalance_Response>(
        'getCreditBalance',
        getCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetCreditBalance_Request.fromBuffer(value),
        ($1.GetCreditBalance_Response value) => value.writeToBuffer()));
  }

  $async.Future<$1.Get_Response> get_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Get_Request> request) async {
    return get(call, await request);
  }

  $async.Future<$1.GetById_Response> getById_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetById_Request> request) async {
    return getById(call, await request);
  }

  $async.Future<$1.Update_Response> update_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Update_Request> request) async {
    return update(call, await request);
  }

  $async.Future<$1.GetRating_Response> getRating_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetRating_Request> request) async {
    return getRating(call, await request);
  }

  $async.Future<$1.GetCreditBalance_Response> getCreditBalance_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetCreditBalance_Request> request) async {
    return getCreditBalance(call, await request);
  }

  $async.Future<$1.Get_Response> get(
      $grpc.ServiceCall call, $1.Get_Request request);
  $async.Future<$1.GetById_Response> getById(
      $grpc.ServiceCall call, $1.GetById_Request request);
  $async.Future<$1.Update_Response> update(
      $grpc.ServiceCall call, $1.Update_Request request);
  $async.Future<$1.GetRating_Response> getRating(
      $grpc.ServiceCall call, $1.GetRating_Request request);
  $async.Future<$1.GetCreditBalance_Response> getCreditBalance(
      $grpc.ServiceCall call, $1.GetCreditBalance_Request request);
}
