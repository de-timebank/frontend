import 'package:grpc/grpc.dart';
import 'package:testfyp/bin/common.dart';
import '../generated/rating/rating.pbgrpc.dart';

class ClientRating {
  final common = Common();
  late RatingClient stub;
  void main() async {
    // final channel = ClientChannel('127.0.0.1',
    //     port: 8080,
    //     options:
    //         const ChannelOptions(credentials: ChannelCredentials.insecure()));
    final channel = Common().channel;

    stub = RatingClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));

    var result =
        await getResponse('id', '416056b5-e518-4e1b-8770-8d9ac1f58868');
    print(result);

    await channel.shutdown();
  }

  Future<Create_Response> ratingForRequestor(
      String author, int value, String comment, String id) async {
    return await stub.createForRequestor(Create_Request(
        rating: Create_NewRatingData()
          ..author = author
          ..value = value
          ..comment = comment
          ..requestId = id));
  }

  Future<Create_Response> ratingForProvidor(
      String author, int value, String comment, String id) async {
    return await stub.createForRequestor(Create_Request(
        rating: Create_NewRatingData()
          ..author = author
          ..value = value
          ..comment = comment
          ..requestId = id));
  }

  Future<Get_Response> getResponse(String key, String value) async {
    return await stub.get(Get_Request()
      ..key = key
      ..value = value);
  }

  Future<Update_Response> updateRating(String id, String body) async {
    return await stub.update(Update_Request()
      ..ratingId = id
      ..body = body);
  }

  Future<Delete_Response> deleteRating(String id) async {
    return await stub.delete(Delete_Request()..ratingId = id);
  }
}

void main() {
  var client = ClientRating();
  client.main();
}
