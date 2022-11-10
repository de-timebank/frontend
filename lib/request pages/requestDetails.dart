import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import 'package:testfyp/rate%20pages/rateProvider.dart';
import '../bin/client_rating.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RequestDetails extends StatelessWidget {
  //final function;

  final ratinglist;
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
      this.ratinglist,
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

  double _valueController = 0;
  double _value1Controller = 0;
  final _commentController = TextEditingController();
  final _comment1Controller = TextEditingController();
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
    if (state.toString() == 'COMPLETED') {
      return true;
    } else {
      return false;
    }
  }

  isOngoing() {
    if (state.toString() == 'ONGOING') {
      return true;
    } else {
      return false;
    }
  }

  isPending() {
    if (state.toString() == 'PENDING') {
      return true;
    } else {
      return false;
    }
  }

  isRated() {
    if (ratinglist.toString() == '') {
      return false;
    } else {
      return true;
    }
  }

  void _completeJob(String id, String user) {
    ClientServiceRequest(Common().channel).completeService1(id, user);
  }

  void _rateRequestor(
      String author, int value, String comment, String id) async {
    ClientRating(Common().channel)
        .ratingForRequestor(author, value, comment, id);
  }

  void _rateProvider(
      String author, int value, String comment, String id) async {
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Heading2('Id'),
            Text(id),
            Heading2('Requestor'),
            Text(requestor.toString().titleCase()),
            Heading2('Title'),
            Text(title.toString().capitalize()),
            SizedBox(height: 15),
            isRequest
                ? Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          isNull(applicants)
                              ? Column(
                                  children: [
                                    Heading2('Applicants'),
                                    Text('No Applicants'),
                                  ],
                                )
                              : isNull(provider)
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 3),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Heading2('Applicants'),
                                          Text('Select your applicants: '),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: applicants.length,
                                            itemBuilder: (context, index) {
                                              return ElevatedButton(
                                                  onPressed: () {
                                                    // print(id);
                                                    // print(applicants[index]);
                                                    // print(user);
                                                    //                             ClientServiceRequest(Common().channel)
                                                    // .selectProvider1('6c2dae2e-2f4b-4768-99e0-d05610278e04', provider, caller);
                                                    _selectProvider(
                                                        id,
                                                        applicants[index],
                                                        user);
                                                    context.showSnackBar(
                                                        message:
                                                            'Applicant Selected');
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text(
                                                    '${index + 1}) ${applicants[index]}',
                                                    style:
                                                        TextStyle(fontSize: 12),
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
                                            Text(provider),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Provider Selected',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                )),
                                            SizedBox(height: 5),
                                            isNull(provider)
                                                ? Text('No provider selected')
                                                : Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(3, 3, 3, 6),
                                                    child: Text(provider),
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
                                        child: Text('Job is still pending')),
                                  ],
                                )
                              : isComplete()
                                  ? isRated()
                                      ? Column(
                                          children: [
                                            Heading2(
                                                'Completed'), //completed on 2
                                            Text(completed),
                                          ],
                                        )
                                      : Column(children: [
                                          Center(
                                            child: RatingBar.builder(
                                              initialRating: 0,
                                              itemBuilder: (context, index) =>
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
                                            controller: _comment1Controller,
                                            decoration: InputDecoration(
                                                hintText: 'Enter comment'),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                print(user);
                                                print(
                                                    _value1Controller.toInt());
                                                print(_comment1Controller.text);
                                                print(id);
                                                _rateProvider(
                                                    user,
                                                    _value1Controller.toInt(),
                                                    _comment1Controller.text,
                                                    id);
                                                context.showSnackBar(
                                                    message:
                                                        'Provider rated!!');
                                                //print(ratinglist);
                                                //Navigator.of(context).pop();
                                              },
                                              child: Text('Rate Provider'))
                                        ])
                                  : ElevatedButton(
                                      onPressed: () {
                                        _completeJob(id, user);
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
                          isNull(provider)
                              ? TextButton(
                                  onPressed: () {
                                    _deleteRequest(id);
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
                                          child: Text('View Rating')),
                                    )
                                  : TextButton(
                                      onPressed: () {
                                        _deleteRequest(id);
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
                              Text(completed),
                              // Text(
                              //   'Rate The requestor',
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.bold, fontSize: 15),
                              // ),
                              isRequest
                                  ? Heading2('Rate The Providor')
                                  : Heading2('Rate The Requestor'),
                              SizedBox(height: 5),
                              isRated()
                                  ? Text('Requestor Rated')
                                  : Column(
                                      children: [
                                        Center(
                                          child: RatingBar.builder(
                                            initialRating: 0,
                                            itemBuilder: (context, index) =>
                                                Icon(
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
                                                  user,
                                                  _valueController.toInt(),
                                                  _commentController.text,
                                                  id);
                                              context.showSnackBar(
                                                  message: 'Requestor rated!!');
                                              //print(ratinglist);
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Rate Requestor')),
                                      ],
                                    )
                            ],
                          ),
                        ),
                      )
                    : isOngoing()
                        ? Center(
                            child: Text('You are currently taking this Job...'))
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
                                      applyJob(id, user);
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
            Text(description.toString().capitalize()),
            Heading2('State'),
            Text(state.toString().capitalize()),
            Heading2('Created On'),
            Text(created),
            Heading2('Updated On'),
            Text(updated),
            // Heading2('Completed On'),
            // isNull(completed) ? Text('Not Completed') : Text(completed),
            // Heading2('Provider'),
            // isNull(provider) ? Text('No provider yet') : Text(provider),
            Heading2('Media'),
            isNull(media) ? Text('No Attachment') : Text(media.toString()),
            Heading2('Location'),
            Text(locationName.toString().titleCase()),
            Text('Latitude: ' + latitude),
            Text('Longitude: ' + longitude),
          ],
        ),
      ),
    );
  }
}
