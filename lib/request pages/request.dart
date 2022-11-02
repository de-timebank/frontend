import 'package:flutter/material.dart';
// import 'package:testfyp/generated/rating/rating.pb.dart';
// import '../generated/services/service-request.pb.dart';
// import 'requestForm.dart';
//import 'request_service.dart';
import 'package:testfyp/bin/client_service_request.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  //var client = Client();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
          title: Text('Request'),
        ),
        body: Center(
          child: Text('Your request is empty, try adding a request...'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () async {
            // var result = await client.stub.getById(GetById_Request()
            //   ..requestId = '9b5f1dca-ea47-4774-867c-8102daef586c');
            // var result = await client.getResponse();
            // print(result);
            //_getRequest();
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => RequestForm(),
            //     ));
          },
          icon: Icon(Icons.add),
          label: Text('Add Request'),
        ));
  }

  // Future<void> _getRequest() async {
  //   var request = await ServiceRequest.getRequest();
  //   print(request);
  // }
}
