import 'package:flutter/material.dart';

import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import '../request pages/requestDetails.dart';
import 'serviceDetails.dart';

class AvailableServices extends StatefulWidget {
  AvailableServices({Key? key}) : super(key: key);

  @override
  State<AvailableServices> createState() => _AvailableServicesState();
}

class _AvailableServicesState extends State<AvailableServices> {
  late Common _common;
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late final user;
  late bool _isEmpty;

  @override
  void initState() {
    _common = Common();
    isLoad = true;
    _isEmpty = true;
    getinstance();
    super.initState();
  }

  void getinstance() async {
    listFiltered = [];
    final user = supabase.auth.currentUser!.id;

    listRequest =
        await ClientServiceRequest(Common().channel).getResponse('state', '0');

    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].requestor != user) {
        listFiltered.add(listRequest.requests[i]);
      }
    }
    //print(listFiltered);
    //print(listRequest);
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
                ? const Center(child: Text('No avaible services...'))
                : ListView.builder(
                    itemCount: listFiltered.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) => RequestDetails(
                                        isRequest: false,
                                        user: user,
                                        id: listFiltered[index].id,
                                        requestor:
                                            listFiltered[index].requestor,
                                        provider: listFiltered[index].provider,
                                        title:
                                            listFiltered[index].details.title,
                                        description: listFiltered[index]
                                            .details
                                            .description,
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
                                        media: listFiltered[index]
                                            .mediaAttachments,
                                      )))
                              .then((value) => setState(
                                    () {
                                      //_isEmpty = true;
                                      getinstance();
                                    },
                                  ));
                        },
                        child: CustomCard_ServiceRequest(
                          //function: getinstance,
                          //id: listFiltered[index].id,
                          requestor: listFiltered[index].requestor,
                          //provider: listFiltered[index].provider,
                          title: listFiltered[index].details.title,
                          // description:
                          //     listFiltered[index].details.description,
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
                          // media: listFiltered[index].mediaAttachments,
                        ),
                      );
                    },
                  ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () {
            //filterList();
          },
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}
