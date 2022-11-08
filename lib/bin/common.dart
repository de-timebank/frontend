import 'package:grpc/grpc.dart';
//import '../generated/services/service-request.pbgrpc.dart';

class Common {
  late final channel;
  //Future<void> main() async {
  //'127.0.0.1'
  //IPv4 Address. . . . . . . . . . . : 10.121.182.155
  // IPv4 Address. . . . . . . . . . . : 10.121.182.155
  //  Subnet Mask . . . . . . . . . . . : 255.255.128.0
  //  Default Gateway . . . . . . . . . : 10.121.128.2
  final String emulator = '10.0.2.2';
  final String server = '127.0.0.1';
  final String ipv4 = '10.121.182.155';
  final String subnetMask = '255.255.128.0';
  final String defaultgateway = '10.121.128.2';
  Common() {
    channel = ClientChannel(emulator,
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
