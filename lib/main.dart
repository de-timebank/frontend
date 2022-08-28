import 'package:flutter/material.dart';
import 'customDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Bank Blockchain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: CustomDrawer(), //look at customDrawer.dart
        body: Column(
          children: [
            Text('Recent services'),
            Container(
              height: 100,
              width: 80,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: [
                  Text('Service 1'),
                  Text('Service 2'),
                  Text('Service 3'),
                  Text('Service 4'),
                  Text('Service 5'),
                  Text('Service 6'),
                  Text('Service 7'),
                ],
              ),
            ),
            Text('Your Requests'),
            Text('Time Balance'),
            Row(children: [
              Text('Find a service request'),
              Column(
                children: [
                  Text('Make a request'),
                  Text('Too watana waberiadgabhariel'),
                ],
              ),
            ])
          ],
        ));
  }
}
