import 'package:flutter/material.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../custom widgets/customHeadline.dart';
import '../custom widgets/heading2.dart';

class ServiceRequestDetails extends StatelessWidget {
  //final function;
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

  ServiceRequestDetails(
      { //required this.function,
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

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);

    // setState(() {
    //   getinstance();
    // });
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
            isNull(provider)
                ? Text('No provider yet')
                : Text(provider.toString().titleCase()),

            // Heading2('Category'),
            // Text('Programming, Python, uhh'),

            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  context.showSnackBar(message: 'Job Requested');
                  Navigator.of(context).pop();
                },
                child: Text('Request Job')),
            TextButton(
                onPressed: () {
                  _deleteRequest(id);
                  context.showSnackBar(message: 'Job Deleted');
                  //Navigator.of(context).pop('Delete');
                  //Navigator.of(context).popUntil((route) => route.i);
                  Navigator.of(context).pushNamed('/navigation');
                },
                child: Text('Delete Job'))
          ],
        ),
      ),
    );
  }
}
