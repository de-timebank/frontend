import 'package:grpc/grpc.dart';
import '../generated/services/service-request.pbgrpc.dart';

class ClientServiceRequest {
  late ServiceRequestClient stub;

  ClientServiceRequest(ClientChannel channel) {
    stub = ServiceRequestClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  // Future<void> main() async {
  //   //final channel = Common().channel;
  //   // stub = ServiceRequestClient(channel,
  //   //     options: CallOptions(timeout: Duration(seconds: 30)));

  //   // final response = await stub.getById(
  //   //     GetById_Request()..requestId = '9b5f1dca-ea47-4774-867c-8102daef586c');

  //   // return response;
  //   // print(response.toString());
  //   var result2 = await getResponseById('9b5f1dca-ea47-4774-867c-8102daef586c');
  //   print(result2);
  //   //await channel.shutdown();
  // }

  Future<GetById_Response> getResponseById(String id) async {
    return await stub.getById(GetById_Request()..requestId = id);
    //'9b5f1dca-ea47-4774-867c-8102daef586c'
    //print(_result);
    //return _serviceResult;
  }

  Future<Get_Response> getResponse(String key, String value) async {
    return await stub.get(Get_Request()
      ..key = key
      ..value = value);
  }

  Future<Create_Response> createServiceRequest(
      String title,
      String description,
      String latitude,
      String longitude,
      String locName,
      double rate,
      List<String> media,
      String requestor) async {
    return await stub.create(Create_Request(
        requestData: Create_NewServiceRequestData(
            details: ServiceRequestData_Details()
              ..title = title
              ..description = description,
            location: ServiceRequestData_Location(
                coordinate: ServiceRequestData_Location_Coordinate()
                  ..latitude = latitude
                  ..longitude = longitude)
              ..name = locName)
          ..rate = rate
          ..media_attachments = media)
      ..requestor = requestor);
  }

  Future<Update_Response> updateService(String id, String body) async {
    return await stub.update(Update_Request()
      ..requestId = id
      ..body = body);
  }

  Future<Delete_Response> deleteService(String id) async {
    return await stub.delete(Delete_Request()..requestId = id);
  }

  Future<ApplyProvider_Response> applyProvider1(
      String id, String provider) async {
    return await stub.applyProvider(ApplyProvider_Request()
      ..requestId = id
      ..provider = provider);
  }

  Future<SelectProvider_Response> selectProvider1(
      String id, String provider, String caller) async {
    return await stub.selectProvider(SelectProvider_Request()
      ..requestId = id
      ..provider = provider
      ..caller = caller);
  }

  Future<CompleteService_Response> completeService1(
      String req_id, String user_id) async {
    return await stub.completeService(CompleteService_Request()
      ..requestId = req_id
      ..userId = user_id);
  }

  Future<GetCommitment_Response> getCommitment1(String req_id) async {
    return await stub
        .getCommitment(GetCommitment_Request()..requestId = req_id);
  }
}

// void main() {
//   final common = Common();
//   final channel = Common().channel;
//   var client = ClientServiceRequest(channel);
//   client.main();
// }
