// import 'package:flutter/foundation.dart';
// import 'package:grpc/grpc.dart';
// import 'package:testfyp/generated/auth_proto/auth.pbgrpc.dart';

// class Client {
//   //ClientChannel? channel;
//   late AuthClient stub;

//   Future<void> main() async {
//     final channel = ClientChannel('127.0.0.1', //ammar bagi
//         port: 8080,
//         options:
//             const ChannelOptions(credentials: ChannelCredentials.insecure()));
//     // var client = Client(
//     //     //client.main();
//     //     );
//     stub = AuthClient(channel,
//         options: CallOptions(timeout: const Duration(seconds: 30)));

//     try {
//       await SignIn();
//       await SignUp();
//     } catch (e) {
//       print('Caught error: $e');
//     }
//   }

//   // var response;
//   // bool executionInProgress = true;

// }
