import 'package:flutter/material.dart';

import '../bin/client_rating.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import 'requestDetails.dart';

class CompletedRequest extends StatefulWidget {
  CompletedRequest({Key? key}) : super(key: key);

  @override
  State<CompletedRequest> createState() => _CompletedRequestState();
}

class _CompletedRequestState extends State<CompletedRequest> {
  late bool isLoad;
  late dynamic listRequest;
  late dynamic listFiltered;
  late dynamic listRating;
  late String user;
  late bool _isEmpty;
  bool isRequest = true;

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

    listRating =
        await ClientRating(Common().channel).getResponseRating('author', user);

    listRequest =
        await ClientServiceRequest(Common().channel).getResponse('state', '3');

    for (var i = 0; i < listRequest.requests.length; i++) {
      if (listRequest.requests[i].provider != user) {
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
                      'All completed request will be listed here, remember to declare the job to "Completed". No completed requests...',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        alignment: Alignment.center,
                        child: Image.asset(
                          'asset/complete_request.png',
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
                                      // hasProviderRated: false,
                                      // counter: 0,
                                      category: listFiltered[index].category,
                                      isRequest: true,
                                      user: user,
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
    );
  }
}
