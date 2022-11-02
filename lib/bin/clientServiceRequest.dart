import 'dart:ffi';

import 'package:grpc/grpc.dart';
import 'package:http/http.dart';
//import 'package:testfyp/generated/rating/rating.pb.dart';
//import 'package:testfyp/generated/rating/rating.pbgrpc.dart';
import 'package:testfyp/generated/services/service-request.pbgrpc.dart';
import 'package:testfyp/dart_grpc_global.dart';

//import 'package:testfyp/generated/service_request/collection/service-request.pbgrpc.dart';

class Service {
  //var stubServiceRequest;

  void main() async {
    // final stubRating = RatingClient(channel,
    //     options: CallOptions(timeout: const Duration(seconds: 30)));

    // final request = getRequests('id', '9b5f1dca-ea47-4774-867c-8102daef586c');
    // print(request.);
    // final stub = ServiceRequestClient(channel,
    //     options: CallOptions(timeout: Duration(seconds: 30)));
    // var response = await stubRating.get(Get_Request()
    //   ..key = 'id'
    //   ..value = '416056b5-e518-4e1b-8770-8d9ac1f58868');

    // var response = await stubServiceRequest.getById(
    //     GetById_Request()..requestId = '9b5f1dca-ea47-4774-867c-8102daef586c');

    // print('The response is ' + response.toString());

    await channel.shutdown();
  }

  final stubServiceRequest = ServiceRequestClient(channel,
      options: CallOptions(timeout: const Duration(seconds: 30)));

  // ignore: recursive_getters
  //get stubServiceRequest => stubServiceRequest;
  Future<Create_Response> createNewServiceRequest(
      String title,
      String description,
      var rate,
      String requestor,
      List<String> media) async {
    var newService = await stubServiceRequest.create(Create_Request(
        requestData: Create_NewServiceRequestData(
            details: ServiceRequestData_Details()
              ..title = title
              ..description = description)
          // ..details = ServiceRequestData();
          // ..location = location;
          ..rate = rate
          ..media_attachments = media)
      //  ..requestData = requestData,
      ..requestor = requestor);
    return newService;
  }

  Future<GetById_Response> getRequestById(String request) async {
    return stubServiceRequest.getById(GetById_Request()..requestId = request);
  }

  Future<Get_Response> getRequests(String key, String value) async {
    return stubServiceRequest.get(Get_Request()
      ..key = key
      ..value = value);

    //return getrequest;
  }

  //void getRequests() {}
}

main() async {
  var service = Service();
  service.main();
  var result =
      await service.getRequestById('9b5f1dca-ea47-4774-867c-8102daef586c');
  print(result);
}
