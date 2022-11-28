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
          //backgroundColor: Color.fromARGB(255, 245, 167, 44),
          bottom: const TabBar(
              // indicatorColor: Colors.cyan,
              tabs: [
                Tab(text: '\t\t\tYour\nRequest'),
                Tab(text: 'Requested\n\t\t\t\tJob'),
                Tab(text: 'Completed\n\t\t\t\t\t\tJob')
              ]),
          title: const Text('Need Help / Favour ?'),
        ),
        body: TabBarView(
            children: [YourRequest(), RequestedJob(), CompletedRequest()]),
      ),
    );
  }
}
