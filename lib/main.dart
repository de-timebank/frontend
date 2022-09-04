import 'package:flutter/material.dart';
import 'package:testfyp/dashboard.dart';
import 'package:testfyp/request.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'customDrawer.dart';
import 'customHeadline.dart';
import 'customOngoingTask.dart';
import 'service.dart';
import 'profile.dart';

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
          // primarySwatch: Colors.blue,
          fontFamily: 'Inter',
          // textTheme: GoogleFonts.interTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(200, 44, 44, 44)), //color for #2c2c2c
              // headline2: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //     color: Color.fromARGB(200, 44, 44, 44)),
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
  int _selectedIndex = 0;
  static List<Widget> _widgetOption = <Widget>[
    //MyHomePage(),
    //Das
    DashBoard(),

    ServicePage(),
    RequestPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        // appBar: AppBar(
        //   title: Text('Home Page'),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.request_page), label: 'Request'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Services'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Account')
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        //drawer: CustomDrawer(), //look at customDrawer.dart
        body: Container(
          child: _widgetOption.elementAt(_selectedIndex),
        )
        //Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     CustomHeadline('Your Service'),
        //     CustomOngoingTask(listService),
        //     CustomHeadline('Your Request'),
        //     CustomOngoingTask(listRequest),
        //     Container(
        //       padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        //       child: Card(
        //           elevation: 5,
        //           color: Colors.black54,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: const [
        //               Padding(
        //                 padding: EdgeInsets.all(10.0),
        //                 child: Text(
        //                   'Time Balance',
        //                   style: TextStyle(
        //                       fontWeight: FontWeight.bold, color: Colors.white),
        //                 ),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.all(10.0),
        //                 child: Text('\$time/hour: 15.50',
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.bold,
        //                         color: Colors.white)),
        //               )
        //             ],
        //           )),
        //     ),
        //     const Divider(
        //         //horizontal line
        //         height: 40,
        //         thickness: 2,
        //         indent: 30,
        //         endIndent: 30),
        //     // Row(
        //     //   //crossAxisAlignment: CrossAxisAlignment.center,
        //     //   mainAxisAlignment: MainAxisAlignment.center,
        //     //   children: [
        //     //     Column(children: [
        //     //       Card(
        //     //         child: InkWell(
        //     //             onTap: () {},
        //     //             child: Column(
        //     //               crossAxisAlignment: CrossAxisAlignment.start,
        //     //               children: [
        //     //                 Padding(
        //     //                   padding: const EdgeInsets.all(8.0),
        //     //                   child: Text(
        //     //                     'Find a service\nrequest',
        //     //                     style: Theme.of(context).textTheme.headline1,
        //     //                   ),
        //     //                 ),
        //     //                 //SizedBox(height: 10),
        //     //                 Padding(
        //     //                   padding: const EdgeInsets.all(8.0),
        //     //                   child: Text('Help others with your skills'),
        //     //                 ),
        //     //                 //SizedBox(height: 10),
        //     //                 Ink.image(
        //     //                   image: AssetImage('asset/folder.png'),
        //     //                   height: 70,
        //     //                   width: 70,
        //     //                 ),
        //     //               ],
        //     //             )),
        //     //       ),
        //     //     ]),
        //     //     Column(
        //     //       //mainAxisAlignment: MainAxisAlignment.center,
        //     //       //crossAxisAlignment: CrossAxisAlignment.stretch,
        //     //       children: [
        //     //         Card(
        //     //             child: InkWell(
        //     //                 onTap: () {},
        //     //                 child: Padding(
        //     //                   padding: const EdgeInsets.all(15.0),
        //     //                   child: Text('Make a request\nLet others help you'),
        //     //                 ))),
        //     //         //SizedBox(height: 25),
        //     //         Card(
        //     //             child: InkWell(
        //     //           onTap: () {},
        //     //           child: Padding(
        //     //             padding: const EdgeInsets.all(15.0),
        //     //             child: Text('Too watana wabl\non tak on tak on'),
        //     //           ),
        //     //         )),
        //     //       ],
        //     //     ),
        //     //   ],
        //     // )
        //   ],
        // ),
        );
  }
}
