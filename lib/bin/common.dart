import 'package:grpc/grpc.dart';
//import '../generated/services/service-request.pbgrpc.dart';

class Common {
  late final channel;
  //Future<void> main() async {
  Common() {
    channel = ClientChannel('10.0.2.2',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
