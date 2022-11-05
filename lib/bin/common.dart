import 'package:grpc/grpc.dart';
//import '../generated/services/service-request.pbgrpc.dart';

class Common {
  late final channel;
  //Future<void> main() async {
  //'127.0.0.1'
  final String emulator = '10.0.2.2';
  final String server = '127.0.0.1';
  Common() {
    channel = ClientChannel(emulator,
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
