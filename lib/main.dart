import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'customDrawer.dart';
import 'customHeadline.dart';
import 'customOngoingTask.dart';

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
          fontFamily: 'Inter',
          // textTheme: GoogleFonts.interTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(200, 44, 44, 44)), //color for #2c2c2c
              bodyText1: TextStyle(fontSize: 20))),
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
  List listService = [
    'Service 1',
    'Service 2',
    'Service 3',
    'Service 4',
    'Service 5',
    'Service 6',
    'Service 8',
  ];
  List listRequest = [
    'Request 1',
    'Request 2',
    'Request 3',
    'Request 4',
    'Request 5',
    'Request 6',
    'Request 8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: CustomDrawer(), //look at customDrawer.dart
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeadline('Your Service'),
            CustomOngoingTask(listService),
            CustomHeadline('Your Request'),
            CustomOngoingTask(listRequest),
            Text('Time Balance'),
            Divider(
                //horizontal line
                height: 50,
                thickness: 2,
                indent: 30,
                endIndent: 30),
            Row(children: [
              Column(children: [
                InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Find a service request'),
                        Text('Help others with your skills'),
                        Ink.image(
                          image: AssetImage('asset/folder.png'),
                          height: 100,
                          width: 100,
                          //child: Text('Find a service request'),
                        ),
                      ],
                    )),
              ]),
              Column(
                children: [
                  Text('Make a request\nLet others help you'),
                  SizedBox(height: 25),
                  Text('Too watana waberiadgabhariel\non tak on tak on'),
                ],
              ),
            ])
          ],
        ));
  }
}
