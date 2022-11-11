import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import 'package:testfyp/rate%20pages/rateProvider.dart';
import '../bin/client_rating.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RequestDetails extends StatefulWidget {
  //final function;

  //final ratinglist;
  var counter;
  final bool isRequest;
  final user;
  final id;
  final requestor;
  final provider;
  final title; //details
  final description;
  final locationName; //location
  final latitude;
  final longitude;
  final state;
  final rate;
  final applicants;
  final created;
  final updated;
  final completed;
  final media;

  RequestDetails(
      { //required this.function,
      //this.ratinglist,
      this.counter,
      required this.isRequest,
      required this.user,
      required this.id,
      required this.requestor,
      this.provider,
      required this.title, //details /
      required this.description,
      required this.locationName, //location
      required this.latitude,
      required this.longitude,
      required this.state,
      required this.applicants,
      required this.created,
      required this.updated,
      required this.rate,
      this.completed,
      this.media});

  @override
  State<RequestDetails> createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {
  double _valueController = 0;

  double _value1Controller = 0;

  final _commentController = TextEditingController();

  final _comment1Controller = TextEditingController();

  late dynamic ratedUser;
  late dynamic ratedUserId;
  late Common _common;
  late bool isLoad;
  bool hasRateProvider = false;
  bool hasRateRequestor = false;

  @override
  void initState() {
    _common = Common();
    isLoad = true;
    _getRatingResponse();
    //_getRatingId();
    super.initState();
  }

  applyJob(String reqid, String provider) {
    ClientServiceRequest(Common().channel).applyProvider1(reqid, provider);
  }

  isNull(dynamic stuff) {
    if (stuff == '' || stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  isComplete() {
    if (widget.state.toString() == 'COMPLETED') {
      return true;
    } else {
      return false;
    }
  }

  isOngoing() {
    if (widget.state.toString() == 'ONGOING') {
      return true;
    } else {
      return false;
    }
  }

  isPending() {
    if (widget.state.toString() == 'PENDING') {
      return true;
    } else {
      return false;
    }
  }

  void _getRatingResponse() async {
    ratedUser = await ClientRating(Common().channel)
        .getResponseRating('request_id', widget.id);
    //_getRatingId();
    // ratedUserId = await ClientRating(Common().channel)
    //     .getResponseRating('author', widget.user);
    // print(widget.user);
    // print(ratedUser.ratings.length);
    // print(ratedUser.ratings.author.toString());
    setState(() {
      isLoad = false;
    });
  }

  isRated() {
    if (ratedUser.ratings.length == 1 && widget.counter != 0) {
      return true;
    } else if (ratedUser.ratings.length == 2) {
      return false;
    } else {
      return true;
    }
  }

  // void _getRatingId() async {
  //   ratedUserId = await ClientRating(Common().channel)
  //       .getResponseRating('author', widget.user);
  // }

  void _completeJob(String id, String user) async {
    ClientServiceRequest(Common().channel).completeService1(id, user);
  }

  void _rateRequestor(
      String author, int value, String comment, String id) async {
    widget.counter++;
    ClientRating(Common().channel)
        .ratingForRequestor(author, value, comment, id);
  }

  void _rateProvider(
      String author, int value, String comment, String id) async {
    widget.counter++;
    ClientRating(Common().channel)
        .ratingForProvider(author, value, comment, id);
  }

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);
  }

  void _selectProvider(String id, String provider, String caller) {
    ClientServiceRequest(Common().channel)
        .selectProvider1(id, provider, caller);
  }

  //final rateServiceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
        title: Text('Job Details'),
      ),
      body: isLoad
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Heading2('Id'),
                  Text(widget.id),
                  Heading2('Requestor'),
                  Text(widget.requestor.toString().titleCase()),
                  Heading2('Title'),
                  Text(widget.title.toString().capitalize()),
                  SizedBox(height: 15),
                  widget.isRequest
                      ? Card(
                          elevation: 5,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                isNull(widget.applicants)
                                    ? Column(
                                        children: [
                                          Heading2('Applicants'),
                                          Text('No Applicants'),
                                        ],
                                      )
                                    : isNull(widget.provider)
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 3),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Heading2('Applicants'),
                                                Text(
                                                    'Select your applicants: '),
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      widget.applicants.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return ElevatedButton(
                                                        onPressed: () {
                                                          // print(widget.id);
                                                          // print(
                                                          //     widget.applicants[
                                                          //         index]);
                                                          // print(widget.user);
                                                          _selectProvider(
                                                              widget.id
                                                                  .toString(),
                                                              widget.applicants[
                                                                      index]
                                                                  .toString(),
                                                              widget.user
                                                                  .toString());
                                                          context.showSnackBar(
                                                              message:
                                                                  'Applicant Selected');
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: Text(
                                                          '${index + 1}) ${widget.applicants[index]}',
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ));
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        : isComplete()
                                            ? Column(
                                                children: [
                                                  Heading2(
                                                      'Provider'), //complete on 1
                                                  Text(widget.provider),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        'Provider Selected',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                      )),
                                                  SizedBox(height: 5),
                                                  isNull(widget.provider)
                                                      ? Text(
                                                          'No provider selected')
                                                      : Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  3, 3, 3, 6),
                                                          child: Text(
                                                              widget.provider),
                                                        )
                                                ],
                                              ),
                                const Divider(thickness: 3),
                                //SizedBox(height: 8),
                                isPending()
                                    ? Column(
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                context.showSnackBar(
                                                    message: 'Job updated!!!');
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                  'Update Job Details (coming soon)')),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.grey),
                                              onPressed: () {},
                                              child:
                                                  Text('Job is still pending')),
                                        ],
                                      )
                                    : isComplete()
                                        ? isRated() //still for request
                                            ? Column(children: [
                                                Center(
                                                  child: RatingBar.builder(
                                                    initialRating: 0,
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                    onRatingUpdate: (value) {
                                                      _value1Controller = value;
                                                      //print(_valueController);
                                                    },
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller:
                                                      _comment1Controller,
                                                  decoration: InputDecoration(
                                                      hintText:
                                                          'Enter comment'),
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      //print(ratedUser);
                                                      // print(user);
                                                      // print(
                                                      //     _value1Controller.toInt());
                                                      // print(_comment1Controller.text);
                                                      // print(id);
                                                      _rateProvider(
                                                          widget.user,
                                                          _value1Controller
                                                              .toInt(),
                                                          _comment1Controller
                                                              .text,
                                                          widget.id);
                                                      context.showSnackBar(
                                                          message:
                                                              'Provider rated!!');
                                                      //print(ratinglist);
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child:
                                                        Text('Rate Provider'))
                                              ])
                                            : Column(
                                                children: [
                                                  Heading2(
                                                      'Completed'), //completed on 2
                                                  Text(widget.completed),
                                                ],
                                              )
                                        : ElevatedButton(
                                            onPressed: () {
                                              _completeJob(
                                                  widget.id, widget.user);
                                              context.showSnackBar(
                                                  message: 'Job Completed');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Complete Job')),
                                // : Container(
                                //     padding: EdgeInsets.all(5),
                                //     decoration: BoxDecoration(
                                //         borderRadius: BorderRadius.circular(5),
                                //         border: Border.all(
                                //             width: 2,
                                //             color: Theme.of(context)
                                //                 .primaryColor)),
                                //     child: Text('Job Not Complete')),
                                isNull(widget.provider)
                                    ? TextButton(
                                        onPressed: () {
                                          _deleteRequest(widget.id);
                                          context.showSnackBar(
                                              message: 'Job Deleted');
                                          Navigator.of(context).pop();
                                          //Navigator.of(context).popUntil((route) => route.i);
                                          //Navigator.of(context).pushNamed('/navigation');
                                        },
                                        child: Text('Delete Job'))
                                    : isComplete()
                                        ? Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        RateProviderPage(),
                                                  ));
                                                },
                                                child:
                                                    Text('Go to rating page')),
                                          )
                                        : TextButton(
                                            onPressed: () {
                                              _deleteRequest(widget.id);
                                              context.showSnackBar(
                                                  message: 'Job Deleted');
                                              Navigator.of(context).pop();
                                              //Navigator.of(context).popUntil((route) => route.i);
                                              //Navigator.of(context).pushNamed('/navigation');
                                            },
                                            child: Text('Abort Job')),
                              ],
                            ),
                          ),
                        )
                      : isComplete()
                          ? Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Heading2('Completed On'),
                                    Text(widget.completed),
                                    // Text(
                                    //   'Rate The requestor',
                                    //   style: TextStyle(
                                    //       fontWeight: FontWeight.bold, fontSize: 15),
                                    // ),
                                    Heading2('Providor'),
                                    Text(widget.provider),
                                    //SizedBox(height: 5),
                                    isRated() //for providor
                                        ? Column(
                                            children: [
                                              Center(
                                                child: RatingBar.builder(
                                                  initialRating: 0,
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                    Icons.star,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                  onRatingUpdate: (value) {
                                                    _valueController = value;
                                                    //print(_valueController);
                                                  },
                                                ),
                                              ),
                                              TextFormField(
                                                controller: _commentController,
                                                decoration: InputDecoration(
                                                    hintText: 'Enter comment'),
                                              ),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    _rateRequestor(
                                                        widget.user,
                                                        _valueController
                                                            .toInt(),
                                                        _commentController.text,
                                                        widget.id);
                                                    context.showSnackBar(
                                                        message:
                                                            'Requestor rated!!');
                                                    //print(ratinglist);
                                                    Navigator.of(context).pop();
                                                  },
                                                  child:
                                                      Text('Rate Requestor')),
                                            ],
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        RateProviderPage(),
                                                  ));
                                                },
                                                child:
                                                    Text('Go to rating page')),
                                          )
                                  ],
                                ),
                              ),
                            )
                          : isOngoing()
                              ? Center(
                                  child: Text(
                                      'You are currently taking this Job...'))
                              : Card(
                                  //sini oi the service
                                  elevation: 5,
                                  child: Column(
                                    children: [
                                      Heading2('Interested in the job?'),
                                      ElevatedButton(
                                          onPressed: () {
                                            // print(widget.id);
                                            // print(widget.user);
                                            applyJob(widget.id, widget.user);
                                            context.showSnackBar(
                                                message: 'Job requested!!');
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Request Job')),
                                    ],
                                  ),
                                ),

                  Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Heading2('Other Information')),
                  Heading2('Description'),
                  Text(widget.description.toString().capitalize()),
                  Heading2('State'),
                  Text(widget.state.toString().capitalize()),
                  Heading2('Created On'),
                  Text(widget.created),
                  Heading2('Updated On'),
                  Text(widget.updated),
                  // Heading2('Completed On'),
                  // isNull(completed) ? Text('Not Completed') : Text(completed),
                  // Heading2('Provider'),
                  // isNull(provider) ? Text('No provider yet') : Text(provider),
                  Heading2('Media'),
                  isNull(widget.media)
                      ? Text('No Attachment')
                      : Text(widget.media.toString()),
                  Heading2('Location'),
                  Text(widget.locationName.toString().titleCase()),
                  Text('Latitude: ' + widget.latitude),
                  Text('Longitude: ' + widget.longitude),
                ],
              ),
            ),
    );
  }
}
