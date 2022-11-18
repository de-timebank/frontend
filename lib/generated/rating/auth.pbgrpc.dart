///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $2;
export 'auth.pb.dart';

class AuthClient extends $grpc.Client {
  static final _$signUp =
      $grpc.ClientMethod<$2.SignUp_Request, $2.SignUp_Response>(
          '/auth.Auth/signUp',
          ($2.SignUp_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SignUp_Response.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.SignUp_Response> signUp($2.SignUp_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.SignUp_Request, $2.SignUp_Response>(
        'signUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignUp_Request.fromBuffer(value),
        ($2.SignUp_Response value) => value.writeToBuffer()));
  }

  $async.Future<$2.SignUp_Response> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SignUp_Request> request) async {
    return signUp(call, await request);
  }

  $async.Future<$2.SignUp_Response> signUp(
      $grpc.ServiceCall call, $2.SignUp_Request request);
}
