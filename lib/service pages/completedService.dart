import 'package:flutter/material.dart';

import '../bin/client_rating.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import '../request pages/requestDetails.dart';
import 'serviceDetails.dart';

class CompletedServices extends StatefulWidget {
  CompletedServices({Key? key}) : super(key: key);

  @override
  State<CompletedServices> createState() => _CompletedServicesState();
}

class _CompletedServicesState extends State<CompletedServices> {
  late Common _common;
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late dynamic listRating;
  late final user;
  late String _userCurrent;
  late bool _isEmpty;

  //registered user (budi)
  final ammar = 'f53809c5-68e6-480c-902e-a5bc3821a003';
  final evergreen = 'd3f86c06-4d1e-4dfb-84b8-33148244fead';
  final ujaiahmad = '291b79a7-c67c-4783-b004-239cb334804d';

  @override
  void initState() {
    _common = Common();
    isLoad = true;
    _isEmpty = true;
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
    listFiltered = [];
    final user = supabase.auth.currentUser!.id;
    _userCurrent = getCurrentUser(user);

    listRating = await ClientRating(Common().channel)
        .getResponseRating('request_id', _userCurrent);
    listRequest =
        await ClientServiceRequest(Common().channel).getResponse('state', '3');

    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].requestor != _userCurrent) {
        listFiltered.add(listRequest.requests[i]);
      }
    }
    //print(listRequest);
    setState(() {
      isLoad = false;
      isEmpty();
    });
    //print(listRequest.requests.length);
  }

  // getListRating() {
  //
  // }

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
              ? const Center(child: Text('No Completed Services'))
              : ListView.builder(
                  itemCount: listFiltered.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => RequestDetails(
                                      //ratinglist: listRating,
                                      isRequest: false,
                                      user: _userCurrent,
                                      id: listFiltered[index].id,
                                      requestor: listFiltered[index].requestor,
                                      provider: listFiltered[index].provider,
                                      title: listFiltered[index].details.title,
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
                      child: CustomCard_ServiceRequest(
                        requestor: listFiltered[index].requestor,
                        title: listFiltered[index].details.title,
                        rate: listFiltered[index].rate,
                      ),
                    );
                  },
                ),
    );
  }
}
