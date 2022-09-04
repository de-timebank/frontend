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
                  fontSize: 15,
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
  static final List<Widget> _widgetOption = <Widget>[
    DashBoard(),
    RequestPage(),
    ServicePage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 41, 108, 224),
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
        body: Container(
          child: _widgetOption.elementAt(_selectedIndex),
        ));
  }
}
