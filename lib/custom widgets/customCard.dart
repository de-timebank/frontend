import 'package:flutter/material.dart';

import '../service pages/serviceRequestDetails.dart';

class CustomCard_ServiceRequest extends StatefulWidget {
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

  const CustomCard_ServiceRequest(
      {super.key,
      //required this.function,
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
  State<CustomCard_ServiceRequest> createState() =>
      _CustomCard_ServiceRequestState();
}

class _CustomCard_ServiceRequestState extends State<CustomCard_ServiceRequest> {
  //get function => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      child: Card(
        elevation: 5,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ServiceRequestDetails(
                    //function: widget.function,
                    id: widget.id,
                    requestor: widget.requestor,
                    provider: widget.provider,
                    title: widget.title,
                    description: widget.description,
                    locationName: widget.locationName,
                    latitude: widget.latitude,
                    longitude: widget.longitude,
                    state: widget.state,
                    rate: widget.rate,
                    applicants: widget.applicants,
                    created: widget.created,
                    updated: widget.updated,
                    completed: widget.completed,
                    media: widget.media,
                  ),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14)
                          //     Theme.of(context).textTheme.headline1,
                          ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(widget.requestor, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 216, 233),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${widget.rate} \$Time/hour',
                          style: TextStyle(fontSize: 14),
                        ),
                      ))),
              // Flexible(
              //   flex: 1,
              //   child: IconButton(
              //       onPressed: (() {}),
              //       icon: Icon(Icons.favorite_border_outlined)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
