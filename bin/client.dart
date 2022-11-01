//import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:testfyp/generated/rating/collection/rating.pbgrpc.dart';
//import 'package:testfyp/generated/service_request/collection/service-request.pbgrpc.dart';

void main() async {
  final channel = ClientChannel('127.0.0.1',
      port: 8080,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()));

  final stub = RatingClient(channel,
      options: CallOptions(timeout: Duration(seconds: 30)));

  // final stub = ServiceRequestClient(channel,
  //     options: CallOptions(timeout: Duration(seconds: 30)));

  // var response = await stub.getById(
  //     GetById_Request()..requestId = '9b5f1dca-ea47-4774-867c-8102daef586c');

  var response = await stub.get(Get_Request()
    ..key = 'id'
    ..value = '416056b5-e518-4e1b-8770-8d9ac1f58868');
  //value: '5', key: '416056b5-e518-4e1b-8770-8d9ac1f58868'
  // rating: Create_NewRatingData(
  //         author: '185552ab-8fbc-4cc0-a9e3-0c660bc4acd6',
  //         comment: 'I love you',
  //         value: 4,
  //         requestId: '19bbe583-1cf1-4b88-81a6-5fcb1ff5010c')

  //var response = await stub.createForProvider(Create_Request());

  print('The response is ' + response.toString());

  await channel.shutdown();
}
