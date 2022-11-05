import 'package:grpc/grpc.dart';
import '../generated/auth/auth.pbgrpc.dart';

class ClientAuth {
  late AuthClient stub;

  ClientAuth(ClientChannel channel) {
    stub = AuthClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));
  }

  Future<SignUp_Response> signUpUser(dynamic back, dynamic front, String email,
      String password, String name, String phoneNumber, String matric) async {
    return await stub.signUp(SignUp_Request(
        payload: SignUp_Payload(
            matricCard: SignUp_MatricCard()
              ..back = back
              ..front = front)
          ..email = email
          ..password = password
          ..name = name
          ..phoneNumber = phoneNumber
          ..matricNumber = matric));
  }

  Future<SignIn_Response> signInUser(String email, String password) async {
    return await stub.signIn(SignIn_Request(
        payload: SignIn_Payload()
          ..email = email
          ..password = password));
  }
}
