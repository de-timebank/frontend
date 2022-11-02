import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  late Common _common;
  // late ClientServiceRequest _service;
  // late ClientRating _rating;
  //late final channel;
  @override
  void initState() {
    _common = Common();

    // _rating = ClientRating();
    // _service = ClientServiceRequest(Common().channel);
    super.initState();
  }

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
            // var result = await _service
            //     .getResponseById('9b5f1dca-ea47-4774-867c-8102daef586c');
            // print(result);
            _getRequest();

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

  Future<void> _getRequest() async {
    var request = await ClientServiceRequest(Common().channel)
        .getResponseById('9b5f1dca-ea47-4774-867c-8102daef586c');
    print(request);
  }
}
