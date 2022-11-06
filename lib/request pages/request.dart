import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/custom%20widgets/customCardRequest.dart';
import 'package:testfyp/extension_string.dart';
//import 'package:testfyp/generated/rating/rating.pb.dart';
import 'package:testfyp/generated/services/service-request.pb.dart';
import 'package:testfyp/request%20pages/requestForm.dart';

import '../service pages/serviceRequestDetails.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  late Common _common;
  late bool isLoad;
  late dynamic listRequest;
  late final user;
  bool _isEmpty = true;
  //registered user (budi)
  final ammar = 'f53809c5-68e6-480c-902e-a5bc3821a003';
  final evergreen = '06a7a82f-b04f-4111-b0c9-a92d918d3207';
  final ujaiahmad = '291b79a7-c67c-4783-b004-239cb334804d';

  @override
  void initState() {
    _common = Common();
    isLoad = true;
    getinstance();
    super.initState();
  }

  getCurrentUser(String id) {
    if (id == '94dba464-863e-4551-affd-4258724ae351') {
      return ujaiahmad;
    } else if (id == 'cd54d0d0-23ef-437c-8397-c5d5d754691f') {
      return ammar; //ujai junior
    } else {
      return evergreen; //e6a7c29b-0b2d-4145-9211-a4e9b545102a
    }
  }

  void getinstance() async {
    final user = supabase.auth.currentUser!.id;
    //print(user);
    final _userCurrent = getCurrentUser(user);
    listRequest = await ClientServiceRequest(Common().channel)
        .getResponse('requestor', _userCurrent);
    //print(listRequest);
    setState(() {
      isLoad = false;
    });
  }

  bool isEmpty() {
    if (listRequest.length == 0) {
      _isEmpty == true;
      return _isEmpty;
    } else {
      _isEmpty == false;
      return _isEmpty;
    }
  }

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);
    setState(() {
      getinstance();
    });
  }

  void _updateRequest(String id, String body) async {
    ClientServiceRequest(Common().channel).updateService(id, body);
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
        body: isLoad
            ? _isEmpty
                ? Center(child: CircularProgressIndicator())
                : Center(child: Text('No request have been made...'))
            : ListView.builder(
                itemCount: listRequest.requests.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                              builder: (context) => ServiceRequestDetails(
                                    id: listRequest.requests[index].id,
                                    requestor:
                                        listRequest.requests[index].requestor,
                                    provider:
                                        listRequest.requests[index].provider,
                                    title: listRequest
                                        .requests[index].details.title,
                                    description: listRequest
                                        .requests[index].details.description,
                                    locationName: listRequest
                                        .requests[index].location.name,
                                    latitude: listRequest.requests[index]
                                        .location.coordinate.latitude,
                                    longitude: listRequest.requests[index]
                                        .location.coordinate.longitude,
                                    state: listRequest.requests[index].state,
                                    rate: listRequest.requests[index].rate,
                                    applicants:
                                        listRequest.requests[index].applicants,
                                    created:
                                        listRequest.requests[index].createdAt,
                                    updated:
                                        listRequest.requests[index].updatedAt,
                                    completed:
                                        listRequest.requests[index].completedAt,
                                    media: listRequest
                                        .requests[index].mediaAttachments,
                                  )))
                          .then((value) => setState(
                                () {
                                  getinstance();
                                },
                              ));
                    },
                    child: CustomCard_ServiceRequest(
                      //function: getinstance,
                      //id: listRequest.requests[index].id,
                      requestor: listRequest.requests[index].requestor,
                      //provider: listRequest.requests[index].provider,
                      title: listRequest.requests[index].details.title,
                      // description:
                      //     listRequest.requests[index].details.description,
                      // locationName: listRequest.requests[index].location.name,
                      // latitude: listRequest
                      //     .requests[index].location.coordinate.latitude,
                      // longitude: listRequest
                      //     .requests[index].location.coordinate.longitude,
                      // state: listRequest.requests[index].state,
                      rate: listRequest.requests[index].rate,
                      // applicants: listRequest.requests[index].applicants,
                      // created: listRequest.requests[index].createdAt,
                      // updated: listRequest.requests[index].updatedAt,
                      // completed: listRequest.requests[index].completedAt,
                      // media: listRequest.requests[index].mediaAttachments,
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RequestForm(),
                )).then((value) => setState(
                  () {
                    getinstance();
                  },
                ));
          },
          icon: Icon(Icons.add),
          label: Text('Add Request'),
        ));
  }
}
