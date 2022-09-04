import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  //title
  //category
  //rate
  //location
  //description
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Request Form'),
        ),
        body: Container(child: Center(child: Text('hiii'))));
  }
}
