// import 'package:grpc/grpc.dart';
// import 'package:testfyp/generated/service_request/collection/service-request.pbgrpc.dart';
// // import 'package:testfyp/generated/auth_proto/auth.pbgrpc.dart';
// // import 'package:testfyp/grpc/auth/auth_abstract.dart';

// // class AuthService extends AuthServiceBase {
// //   @override
// //   Future<SignIn_Response> signIn(
// //       ServiceCall call, SignIn_Request request) async {
// //     // TODO: implement signIn
// //     //authenticationServices.SignIn(signIn_Payload)!;
// //     throw UnimplementedError();
// //   }

// //   @override
// //   Future<SignUp_Response> signUp(ServiceCall call, SignUp_Request request) {
// //     // TODO: implement signUp
// //     throw UnimplementedError();
// //   }
// // }

// void main() async {
//   final server = Server(
//       [ServiceRequest()],
//       const <Interceptor>[], //for authentication
//       CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]));
//   await server.serve(port: 8080);
//   print('Server listening on port ${server.port}');
// }
