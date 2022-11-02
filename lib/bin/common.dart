import 'package:grpc/grpc.dart';
//import '../generated/services/service-request.pbgrpc.dart';

class Common {
  late final channel;
  //Future<void> main() async {
  Common() {
    channel = ClientChannel('127.0.0.1',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
