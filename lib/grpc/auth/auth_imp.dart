import 'package:flutter/src/foundation/annotations.dart';
import 'package:testfyp/generated/auth_proto/auth.pb.dart';
import 'package:testfyp/grpc/auth/auth_abstract.dart';

class AuthenticationServices implements IAuthenticationServices {
  @override
  Category? SignIn(SignIn_Payload signIn_Payload) {
    // TODO: implement SignIn
    throw UnimplementedError();
  }

  @override
  Category? SignUp(SignUp_Payload signUp_Payload) {
    // TODO: implement SignUp
    throw UnimplementedError();
  }
}
