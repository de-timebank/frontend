import 'package:flutter/material.dart';
//import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
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
  late int index1;
  late String user;
  //late Future<dynamic> listRequest;
  @override
  void initState() {
    _common = Common();
    isLoad = true;
    index1 = 2;
    getinstance();
    //listRequest = _
    super.initState();
  }

  void getinstance() async {
    listRequest = await ClientServiceRequest(Common().channel)
        .getResponse('requestor', '291b79a7-c67c-4783-b004-239cb334804d');
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

  //var client = Client();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
          title: const Text('Request'),
        ),
        //Text(listRequest.requests[0].location.toString()), return location
        body: isLoad
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listRequest.requests.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                    child: Card(
                      elevation: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    listRequest.requests[index].details.title
                                        .toString()
                                        .capitalize(),
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(listRequest
                                      .requests[index].details.description
                                      .toString()
                                      .capitalize()),
                                  SizedBox(height: 8),
                                  Text(
                                    'Location: ' +
                                        listRequest
                                            .requests[index].location.name
                                            .toString()
                                            .titleCase(),
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Theme.of(context).primaryColor,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    'Requestor: ' +
                                        listRequest.requests[index].requestor
                                            .toString(),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                      'Request id:' +
                                          listRequest.requests[index].id
                                              .toString(),
                                      style: TextStyle(fontSize: 10)),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 219, 216, 233)),
                                  child: Text(
                                    '\$ Time/hour : ' +
                                        listRequest.requests[index].rate
                                            .toString(),
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                                // Text(
                                //   'Applicant: ' +
                                //       listRequest.requests[index].applicant
                                //           .toString(),
                                //   style: TextStyle(fontSize: 13),
                                // ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: IconButton(
                                onPressed: (() {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text(
                                        'Delete job request?',
                                        textAlign: TextAlign.center,
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              _deleteRequest(listRequest
                                                  .requests[index].id
                                                  .toString());
                                            },
                                            child: const Text('Yes')),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('No'))
                                      ],
                                    ),
                                  );
                                }),
                                icon: Icon(Icons.delete_outline)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () async {
            //_getRequest();
            //_getAllRequest();
            print(listRequest.toString());
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
