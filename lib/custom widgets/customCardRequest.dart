import 'package:flutter/material.dart';
import 'package:testfyp/extension_string.dart';

import '../service pages/serviceDetails.dart';

class CustomCard_ServiceRequest extends StatefulWidget {
  final requestor;
  // final provider;
  final title; //details
  final rate;

  const CustomCard_ServiceRequest({
    super.key,
    required this.requestor,
    required this.title, //details /
    required this.rate,
  });

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
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                        //     Theme.of(context).textTheme.headline1,
                        ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.requestor.toString().titleCase(),
                        style: TextStyle(fontSize: 12)),
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
    );
  }
}
