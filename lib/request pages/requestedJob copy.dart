import 'package:flutter/material.dart';

import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardServiceRequest.dart';
import 'requestDetails.dart';

class RequestedJob extends StatefulWidget {
  RequestedJob({Key? key}) : super(key: key);

  @override
  State<RequestedJob> createState() => _RequestedJobState();
}

class _RequestedJobState extends State<RequestedJob> {
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late String user;
  late bool _isEmpty;

  @override
  void initState() {
    isLoad = true;
    _isEmpty = true;
    getinstance();
    super.initState();
  }

  void getinstance() async {
    listFiltered = [];
    user = supabase.auth.currentUser!.id;

    listRequest = await ClientServiceRequest(Common().channel)
        .getResponse('requestor', user);

    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].applicants.length != 0 &&
          listRequest.requests[i].state.toString() != 'COMPLETED') {
        listFiltered.add(listRequest.requests[i]);
      }
    }

    setState(() {
      isLoad = false;
      isEmpty();
    });
    //print(listRequest.requests.length);
  }

  bool isEmpty() {
    if (listFiltered.length == 0) {
      _isEmpty = true;
      return _isEmpty;
    } else {
      _isEmpty = false;
      return _isEmpty;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoad
          ? const Center(child: CircularProgressIndicator())
          : _isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'When people offer their service to you, the job will be listed here. You can choose the applicants..',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'asset/applicants.png',
                          height: MediaQuery.of(context).size.height / 2.3,
                        )),
                  ],
                )
              : ListView.builder(
                  itemCount: listFiltered.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => RequestDetails(
                                      category: listFiltered[index].category,
                                      isRequest: true,
                                      user: user,
                                      id: listFiltered[index].id,
                                      requestor: listFiltered[index].requestor,
                                      provider: listFiltered[index].provider,
                                      title: listFiltered[index].title,
                                      description:
                                          listFiltered[index].description,
                                      locationName:
                                          listFiltered[index].location.name,
                                      latitude: listFiltered[index]
                                          .location
                                          .coordinate
                                          .latitude,
                                      longitude: listFiltered[index]
                                          .location
                                          .coordinate
                                          .longitude,
                                      state: listFiltered[index].state,
                                      rate: listFiltered[index].rate,
                                      applicants:
                                          listFiltered[index].applicants,
                                      created: listFiltered[index].createdAt,
                                      updated: listFiltered[index].updatedAt,
                                      completed:
                                          listFiltered[index].completedAt,
                                      media:
                                          listFiltered[index].mediaAttachments,
                                    )))
                            .then((value) => setState(
                                  () {
                                    //_isEmpty = true;
                                    getinstance();
                                  },
                                ));
                      },
                      child: CustomCardServiceRequest(
                        date: listFiltered[index]['date'],
                        state: listFiltered[index].state,
                        //function: getinstance,
                        //id: listFiltered[index].id,
                        requestor: listFiltered[index].requestor,
                        //provider: listFiltered[index].provider,
                        title: listFiltered[index].title,
                        // description:
                        //     listFiltered[index].description,
                        // locationName: listFiltered[index].location.name,
                        // latitude: listFiltered
                        //     [index].location.coordinate.latitude,
                        // longitude: listFiltered
                        //     [index].location.coordinate.longitude,
                        // state: listFiltered[index].state,
                        rate: listFiltered[index].rate,
                        // applicants: listFiltered[index].applicants,
                        // created: listFiltered[index].createdAt,
                        // updated: listFiltered[index].updatedAt,
                        // completed: listFiltered[index].completedAt,
                        // media: listRequest[index].mediaAttachments,
                      ),
                    );
                  },
                ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Color.fromARGB(255, 127, 17, 224),
      //   onPressed: () async {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => RequestForm(),
      //         )).then((value) => setState(
      //           () {
      //             getinstance();
      //           },
      //         ));
      //   },
      //   icon: Icon(Icons.add),
      //   label: Text('Add Request'),
      // )
    );
  }
}
