import 'package:flutter/material.dart';
import 'package:testfyp/request%20pages/completedRequest.dart';
import 'package:testfyp/request%20pages/requestedJob.dart';
import 'package:testfyp/request%20pages/yourRequest.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(text: 'Your Request'),
            Tab(text: 'Requested Job'),
            Tab(text: 'Completed Job')
          ]),
          title: const Text('Request'),
        ),
        body: TabBarView(
            children: [YourRequest(), RequestedJob(), CompletedRequest()]),
      ),
    );
  }
}
