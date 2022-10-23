import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/dashboard.dart';
import 'package:testfyp/request.dart';
import 'service.dart';
import 'profile.dart';

void main() async {
  runApp(const MyApp());
  await Supabase.initialize(
    url: '[https://qcoqbidwruiakpykidlf.supabase.co]',
    anonKey:
        '[eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFjb3FiaWR3cnVpYWtweWtpZGxmIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjYzNDEzODYsImV4cCI6MTk4MTkxNzM4Nn0.ol5POkel6KTRNrDk7Z_yUvYhzJ7_SXbY7Yt94Wvzi-Q]',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Bank Blockchain',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 234, 234, 234),
        //primarySwatch: Colors.purple,
        //brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 127, 17, 224),
        //fontFamily: 'Georgia',
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        // textTheme: const TextTheme(
        //     headline1: TextStyle(
        //       //fontFamily: ,
        //         fontSize: 15,
        //         fontWeight: FontWeight.bold,
        //         color: Color.fromARGB(200, 44, 44, 44)), //color for #2c2c2c
        //     bodyText1: TextStyle(fontSize: 20),
        //     subtitle1: TextStyle(fontSize: 12))
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
          unselectedItemColor: Color.fromARGB(255, 234, 234, 234),
          selectedItemColor: Color.fromARGB(255, 203, 197, 234),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
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
