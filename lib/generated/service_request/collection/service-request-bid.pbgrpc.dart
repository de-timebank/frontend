///
//  Generated code. Do not modify.
//  source: collection/service-request-bid.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service-request-bid.pb.dart' as $0;
export 'service-request-bid.pb.dart';

class ServiceRequestBidClient extends $grpc.Client {
  static final _$create =
      $grpc.ClientMethod<$0.Create_Request, $0.Create_Response>(
          '/timebank.servicerequestbid.ServiceRequestBid/create',
          ($0.Create_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Create_Response.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.Get_Request, $0.Get_Response>(
      '/timebank.servicerequestbid.ServiceRequestBid/get',
      ($0.Get_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Get_Response.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$0.Delete_Request, $0.Delete_Response>(
          '/timebank.servicerequestbid.ServiceRequestBid/delete',
          ($0.Delete_Request value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.Delete_Response.fromBuffer(value));

  ServiceRequestBidClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Create_Response> create($0.Create_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Get_Response> get($0.Get_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.Delete_Response> delete($0.Delete_Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class ServiceRequestBidServiceBase extends $grpc.Service {
  $core.String get $name => 'timebank.servicerequestbid.ServiceRequestBid';

  ServiceRequestBidServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Create_Request, $0.Create_Response>(
        'create',
        create_Pre,
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
    $addMethod($grpc.ServiceMethod<$0.Delete_Request, $0.Delete_Response>(
        'delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Delete_Request.fromBuffer(value),
        ($0.Delete_Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Create_Response> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Create_Request> request) async {
    return create(call, await request);
  }

  $async.Future<$0.Get_Response> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Get_Request> request) async {
    return get(call, await request);
  }

  $async.Future<$0.Delete_Response> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Delete_Request> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.Create_Response> create(
      $grpc.ServiceCall call, $0.Create_Request request);
  $async.Future<$0.Get_Response> get(
      $grpc.ServiceCall call, $0.Get_Request request);
  $async.Future<$0.Delete_Response> delete(
      $grpc.ServiceCall call, $0.Delete_Request request);
}
