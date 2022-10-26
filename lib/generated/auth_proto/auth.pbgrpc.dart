///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class AuthClient extends $grpc.Client {
  static final _$signIn =
      $grpc.ClientMethod<$0.SignIn_Request, $0.SignIn_Response>(
          '/auth.Auth/signIn',
          ($0.SignIn_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SignIn_Response.fromBuffer(value));
  static final _$signUp =
      $grpc.ClientMethod<$0.SignUp_Request, $0.SignUp_Response>(
          '/auth.Auth/signUp',
          ($0.SignUp_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SignUp_Response.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignIn_Response> signIn($0.SignIn_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignUp_Response> signUp($0.SignUp_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignIn_Request, $0.SignIn_Response>(
        'signIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignIn_Request.fromBuffer(value),
        ($0.SignIn_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignUp_Request, $0.SignUp_Response>(
        'signUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignUp_Request.fromBuffer(value),
        ($0.SignUp_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignIn_Response> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignIn_Request> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.SignUp_Response> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignUp_Request> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.SignIn_Response> signIn(
      $grpc.ServiceCall call, $0.SignIn_Request request);
  $async.Future<$0.SignUp_Response> signUp(
      $grpc.ServiceCall call, $0.SignUp_Request request);
}
