import 'package:flutter/material.dart';
import 'package:testfyp/service%20pages/available_service.dart';
import 'package:testfyp/service%20pages/yourServices.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(text: 'Available Services'),
                Tab(text: 'Your Services')
              ]),
              // backgroundColor: Color.fromARGB(255, 127, 17, 224),
              title: const Text('Service'),
            ),
            body: TabBarView(
              children: [AvailableServices(), YourServices()],
            )));
  }
}
