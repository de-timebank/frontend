import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_rating.dart';
import 'package:testfyp/custom%20widgets/customCardRating.dart';

import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardRequest.dart';
import 'ratingDetails.dart';

class RateReceivedPage extends StatefulWidget {
  const RateReceivedPage({super.key});

  @override
  State<RateReceivedPage> createState() => _RateReceivedPageState();
}

class _RateReceivedPageState extends State<RateReceivedPage> {
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

    //print(_userCurrent);
    listRequest = await ClientRating(Common().channel)
        .getResponseRating('recipient', user);
    //print(listRequest);
    for (var i = 0; i < listRequest.ratings.length; i++) {
      if (listRequest.ratings[i].recipient == user) {
        listFiltered.add(listRequest.ratings[i]);
      }
      //print(listFiltered);
    }
    setState(() {
      isLoad = false;
      isEmpty();
    });
    //print(listRequest.ratings.length);
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
      appBar: AppBar(title: Text('Received Rating')),
      body: isLoad
          ? const Center(child: CircularProgressIndicator())
          : _isEmpty
              ? const Center(child: Text('No comment...'))
              : ListView.builder(
                  itemCount: listFiltered.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => RatingDetails(
                                      isProvider: false,
                                      id: listFiltered[index].id,
                                      author: listFiltered[index].author,
                                      recipient: listFiltered[index].recipient,
                                      value: listFiltered[index].value,
                                      comment: listFiltered[index].comment,
                                      createdAt: listFiltered[index].createdAt,
                                      updatedAt: listFiltered[index].updatedAt,
                                      requestId: listFiltered[index].requestId,
                                    )))
                            .then((value) => setState(
                                  () {
                                    //_isEmpty = true;
                                    getinstance();
                                  },
                                ));
                      },
                      child: CustomCardRating(
                        provider: listFiltered[index].recipient,
                        value: listFiltered[index].value,
                        //function: getinstance,
                        //id: listFiltered[index].id,
                        requestor: listFiltered[index].author,
                        //provider: listFiltered[index].provider,
                        title: listFiltered[index].comment,
                        // description:
                        //     listFiltered[index].details.description,
                        // locationName: listFiltered[index].location.name,
                        // latitude: listFiltered
                        //     [index].location.coordinate.latitude,
                        // longitude: listFiltered
                        //     [index].location.coordinate.longitude,
                        // state: listFiltered[index].state,
                        rate: listFiltered[index].value,
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
    ;
  }
}
