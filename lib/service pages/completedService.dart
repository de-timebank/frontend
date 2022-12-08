import 'package:flutter/material.dart';

import '../bin/client_rating.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import '../request pages/requestDetails.dart';

class CompletedServices extends StatefulWidget {
  CompletedServices({Key? key}) : super(key: key);

  @override
  State<CompletedServices> createState() => _CompletedServicesState();
}

class _CompletedServicesState extends State<CompletedServices> {
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late dynamic listRating;
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

    listRating = await ClientRating(Common().channel)
        .getResponseRating('request_id', user);
    listRequest =
        await ClientServiceRequest(Common().channel).getResponse('state', '3');

    //print(listRequest);
    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].provider == user) {
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
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'When you service/help is completed, the job will be listed here. No completed job yet...',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'asset/completed_job.png',
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
                                      //ratinglist: listRating,
                                      //counter: 0,
                                      category: listFiltered[index].category,
                                      isRequest: false,
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
                      child: CustomCard_ServiceRequest(
                        requestor: listFiltered[index].requestor,
                        title: listFiltered[index].title,
                        rate: listFiltered[index].rate,
                      ),
                    );
                  },
                ),
    );
  }
}
