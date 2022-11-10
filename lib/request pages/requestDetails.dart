import 'package:flutter/material.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/heading2.dart';

class RequestDetails extends StatelessWidget {
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

  isNull(dynamic stuff) {
    if (stuff == '' || stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  isSelected() {
    if (provider != null || provider != '') {
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
            Text(id),
            Heading2('Title'),
            Text(title.toString().capitalize()),
            Heading2('Description'),
            Text(description.toString().capitalize()),
            Heading2('Media'),
            isNull(media) ? Text('No Attachment') : Text(media.toString()),
            Heading2('Location'),
            Text(locationName.toString().titleCase()),
            Text('Latitude: ' + latitude),
            Text('Longitude: ' + longitude),
            Heading2('Requestor'),
            Text(requestor.toString().titleCase()),
            Heading2('State'),
            Text(state.toString().capitalize()),
            Heading2('Created On'),
            Text(created),
            Heading2('Updated On'),
            Text(updated),
            Heading2('Completed On'),
            isNull(completed) ? Text('Not Completed') : Text(completed),
            Heading2('Provider'),
            isNull(provider) ? Text('No provider yet') : Text(provider),
            SizedBox(height: 15),
            isNull(applicants)
                ? Column(
                    children: [
                      Heading2('Applicants'),
                      Text('No Applicants'),
                    ],
                  )
                : isNull(provider)
                    ? Card(
                        margin:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                            id, applicants[index], user);
                                        context.showSnackBar(
                                            message: 'Applicant Selected');
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        '${index + 1}) ${applicants[index]}',
                                        style: TextStyle(fontSize: 12),
                                      ));
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Text('Applicants Selected')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  context.showSnackBar(message: 'Job updated!!!s');
                  Navigator.of(context).pop();
                },
                child: Text('Update Job Details (coming soon)')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Complete Job')),
                isNull(provider)
                    ? TextButton(
                        onPressed: () {
                          _deleteRequest(id);
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
            )
          ],
        ),
      ),
    );
  }
}
