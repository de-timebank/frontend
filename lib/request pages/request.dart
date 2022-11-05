import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/custom%20widgets/customCard.dart';
import 'package:testfyp/extension_string.dart';
//import 'package:testfyp/generated/rating/rating.pb.dart';
import 'package:testfyp/generated/services/service-request.pb.dart';
import 'package:testfyp/request%20pages/requestForm.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  late Common _common;
  late bool isLoad;
  late dynamic listRequest;
  //late int index1;
  late String user;
  //late Future<dynamic> listRequest;
  @override
  void initState() {
    _common = Common();
    isLoad = true;
    //index1 = 2;
    getinstance();
    //listRequest = _
    super.initState();
  }

  void getinstance() async {
    listRequest = await ClientServiceRequest(Common().channel)
        .getResponse('requestor', '291b79a7-c67c-4783-b004-239cb334804d');
    //print(listRequest);
    //print(jsonEncode(listRequest));
    //index1 = listRequest.requests.length;
    // print(await ClientServiceRequest(Common().channel)
    //     .getResponse('requestor', '291b79a7-c67c-4783-b004-239cb334804d')
    //     .toString());
    setState(() {
      isLoad = false;
    });
  }

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);

    setState(() {
      getinstance();
    });
  }

  void _updateRequest(String id, String body) async {
    ClientServiceRequest(Common().channel).updateService(id, body);
    //print(ClientServiceRequest(Common().channel).updateService(id, body));
    setState(() {
      getinstance();
    });
  }

  //var client = Client();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.add),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => RequestForm(),
          //           )).then((value) => setState(
          //             () {
          //               getinstance();
          //               //_getProfile();
          //             },
          //           ));
          //     },
          //   ),
          //   Text('Add Request'),
          // ],
          title: const Text('Request'),
        ),
        //Text(listRequest.requests[0].location.toString()), return location
        body: isLoad
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listRequest.requests.length,
                itemBuilder: (context, index) {
                  return CustomCard_ServiceRequest(
                    //function: getinstance,
                    id: listRequest.requests[index].id,
                    requestor: listRequest.requests[index].requestor,
                    provider: listRequest.requests[index].provider,
                    title: listRequest.requests[index].details.title,
                    description:
                        listRequest.requests[index].details.description,
                    locationName: listRequest.requests[index].location.name,
                    latitude: listRequest
                        .requests[index].location.coordinate.latitude,
                    longitude: listRequest
                        .requests[index].location.coordinate.longitude,
                    state: listRequest.requests[index].state,
                    rate: listRequest.requests[index].rate,
                    applicants: listRequest.requests[index].applicants,
                    created: listRequest.requests[index].createdAt,
                    updated: listRequest.requests[index].updatedAt,
                    completed: listRequest.requests[index].completedAt,
                    media: listRequest.requests[index].mediaAttachments,
                  );
                },
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () async {
            //_getRequest();
            //_getAllRequest();
            //print(listRequest.toString());
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RequestForm(),
                )).then((value) => setState(
                  () {
                    getinstance();
                    //_getProfile();
                  },
                ));
          },
          icon: Icon(Icons.add),
          label: Text('Add Request'),
        ));
  }
}
