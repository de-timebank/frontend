import 'package:flutter/material.dart';
import '../custom widgets/customCard.dart';
import 'serviceRequestDetails.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
          title: Text('Service'),
        ),
        body: isEmpty
            ? Center(
                child: Text('No available service'),
              )
            : ListView(
                children: [
                  // CustomCard_ServiceRequest(
                  //   rate: 3,
                  //   requestor: 'ujai',
                  //   title: 'Sample Title',
                  // )
                ],
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () {},
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}
