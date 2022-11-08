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
  //var _applicants = [];
  late var counter;
  isNull(dynamic stuff) {
    if (stuff == '' || stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    counter = 1;
    // TODO: implement initState
    super.initState();
  }

  _selectProvider(String id, String provider, String caller) {
    ClientServiceRequest(Common().channel)
        .selectProvider1(id, provider, caller);
  }

  void _deleteRequest(String id) async {
    ClientServiceRequest(Common().channel).deleteService(id);
  }

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
            Heading2('Title'),
            Text(widget.title.toString().capitalize()),
            Heading2('Description'),
            Text(widget.description.toString().capitalize()),
            Heading2('Media'),
            isNull(widget.media)
                ? Text('No Attachment')
                : Text(widget.media.toString()),
            Heading2('Location'),
            Text(widget.locationName.toString().titleCase()),
            Text('Latitude: ' + widget.latitude),
            Text('Longitude: ' + widget.longitude),
            Heading2('Requestor'),
            Text(widget.requestor.toString().titleCase()),
            Heading2('State'),
            Text(widget.state.toString().capitalize()),
            Heading2('Created On'),
            Text(widget.created),
            Heading2('Updated On'),
            Text(widget.updated),
            Heading2('Completed On'),
            isNull(widget.completed)
                ? Text('Not Completed')
                : Text(widget.completed),
            Heading2('Provider'),
            isNull(widget.provider)
                ? Text('No provider yet')
                : Text(widget.provider.toString().titleCase()),
            SizedBox(height: 8),
            isNull(widget.applicants)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading2('Applicants'),
                      Text('No Applicants yet...'),
                      SizedBox(height: 10)
                    ],
                  )
                : //Text(widget.applicants[0].toString()),
                Card(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
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
                            itemCount: widget.applicants.length,
                            itemBuilder: (context, index) {
                              return ElevatedButton(
                                  onPressed: () {
                                    _selectProvider(widget.id,
                                        widget.applicants[index], widget.user);
                                    context.showSnackBar(
                                        message: 'Applicant Selected');
                                    //Navigator.of(context).pop();
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
                  ),
            ElevatedButton(
                onPressed: () {
                  context.showSnackBar(message: 'Job updated!!!s');
                  Navigator.of(context).pop();
                },
                child: Text('Update Job Details (coming soon)')),
            TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Delete job request?',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              _deleteRequest(widget.id);
                              Navigator.of(context).pop();
                              context.showSnackBar(message: 'Job Deleted');
                            },
                            child: const Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('No'))
                      ],
                    ),
                  );
                  //_deleteRequest(widget.id);
                  //
                  //Navigator.of(context).pop();
                  //Navigator.of(context).popUntil((route) => route.i);
                  //Navigator.of(context).pushNamed('/navigation');
                },
                child: Text('Delete Job'))
          ],
        ),
      ),
    );
  }
}
