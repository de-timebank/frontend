import 'package:grpc/grpc.dart';

import '../generated/user.pbgrpc.dart';

class ClientUser {
  late UserClient stub;

  ClientUser(ClientChannel channel) {
    stub = UserClient(channel,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  Future<Get_Response> getUser(String key, String value) async {
    return await stub.get(Get_Request()
      ..key = key
      ..value = value);
  }

  Future<GetById_Response> getUserById(String id) async {
    return await stub.getById(GetById_Request()..userId = id);
  }

  Future<Update_Response> updateUser(String id, String body) async {
    return await stub.update(Update_Request()
      ..userId = id
      ..body = body);
  }

  Future<GetProfile_Response> getProfile1(String id) async {
    return await stub.getProfile(GetProfile_Request()..userId = id);
  }

  Future<GetRating_Response> getUserRating(String id) async {
    return await stub.getRating(GetRating_Request()..userId = id);
  }

  Future<GetCreditBalance_Response> getUserCreditBalance(String id) async {
    return await stub.getCreditBalance(GetCreditBalance_Request()..userId = id);
  }
}
