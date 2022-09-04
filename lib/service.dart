import 'package:flutter/material.dart';
import 'customDrawer.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Request'),
        ),
        body: Column(
          children: [
            Center(
              child:
                  Text('Your service is empty, try searching for a service...'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}
