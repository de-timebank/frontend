import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:testfyp/generated/auth_proto/auth.pbgrpc.dart';

class Client {
  ClientChannel? channel;
  AuthClient? stub;
  var response;
  bool executionInProgress = true;

  // Future<Category> _sign_up(SignUp signUp)async {

  // }
}

void main() {
  var client = Client(
      //client.main();
      );
}
