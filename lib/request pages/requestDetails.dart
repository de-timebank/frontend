import 'package:flutter/material.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RequestDetails extends StatefulWidget {
  //final function;
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

  isPending() {
    if (widget.state.toString() == 'PENDING') {
      return true;
    } else {
      return false;
    }
  }

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);
  }

  _selectProvider(String id, String provider, String caller) {
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
            Text(widget.id),
            Heading2('Requestor'),
            Text(widget.requestor.toString().titleCase()),
            Heading2('Title'),
            Text(widget.title.toString().capitalize()),

            SizedBox(height: 15),
            Card(
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
                            ? Card(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 3),
                                elevation: 5,
                                child: Padding(
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
                                        itemCount: widget.applicants.length,
                                        itemBuilder: (context, index) {
                                          return ElevatedButton(
                                              onPressed: () {
                                                // print(id);
                                                // print(applicants[index]);
                                                // print(user);
                                                //                             ClientServiceRequest(Common().channel)
                                                // .selectProvider1('6c2dae2e-2f4b-4768-99e0-d05610278e04', provider, caller);
                                                _selectProvider(
                                                    widget.id,
                                                    widget.applicants[index],
                                                    widget.user);
                                                context.showSnackBar(
                                                    message:
                                                        'Applicant Selected');
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                '${index + 1}) ${widget.applicants[index]}',
                                                style: TextStyle(fontSize: 12),
                                              ));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Provider Selected',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).primaryColor),
                                      )),
                                  SizedBox(height: 5),
                                  isNull(widget.provider)
                                      ? Text('No provider selected')
                                      : Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              3, 3, 3, 6),
                                          child: Text(widget.provider),
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
                                  child:
                                      Text('Update Job Details (coming soon)')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey),
                                  onPressed: () {},
                                  child: Text('Job is still pending')),
                            ],
                          )
                        : isComplete()
                            ? Column(
                                children: [
                                  Heading2('Completed On'),
                                  Text('Job is completed!'),
                                ],
                              )
                            : ElevatedButton(
                                onPressed: () {}, child: Text('Complete Job')),
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
                              context.showSnackBar(message: 'Job Deleted');
                              Navigator.of(context).pop();
                              //Navigator.of(context).popUntil((route) => route.i);
                              //Navigator.of(context).pushNamed('/navigation');
                            },
                            child: Text('Delete Job'))
                        : TextButton(
                            onPressed: () {
                              // _deleteRequest(id);
                              // context.showSnackBar(message: 'Job Deleted');
                              // Navigator.of(context).pop();
                              //Navigator.of(context).popUntil((route) => route.i);
                              //Navigator.of(context).pushNamed('/navigation');
                            },
                            child: Text('Abort Job')),
                  ],
                ),
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
