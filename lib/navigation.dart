// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/dashboard%20pages/dashboard.dart';
import 'package:testfyp/profile%20pages/profile.dart';

import 'request pages/request.dart';
import 'service pages/service.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({Key? key}) : super(key: key);

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  // late Common _common;
  // late bool isLoad;
  // late dynamic listRequest;
  // late dynamic listFiltered;
  // late final user;
  // late String _userCurrent;
  // late bool _isEmpty;

  // //registered user (budi)
  // final ammar = 'f53809c5-68e6-480c-902e-a5bc3821a003';
  // final evergreen = '06a7a82f-b04f-4111-b0c9-a92d918d3207';
  // final ujaiahmad = '291b79a7-c67c-4783-b004-239cb334804d';

  int _selectedIndex = 0;
  final session = supabase.auth.currentSession;

  final List<Widget> _widgetOptions = [
    DashBoard(),
    RequestPage(),
    ServicePage(),
    ProfilePage()
  ];

  @override
  void initState() {
    // _common = Common();
    // isLoad = true;
    // _isEmpty = true;
    // getinstance();
    super.initState();
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          //selectedItemColor: Color.fromARGB(255, 91, 71, 189),
          unselectedItemColor: Colors.white,
          //Color.fromARGB(255, 203, 197, 234)
          selectedFontSize: 18,

          unselectedFontSize: 10,
          //selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 27, 15, 15)),
          showUnselectedLabels: true,
          //type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 127, 17, 224)),
            BottomNavigationBarItem(
                icon: Icon(Icons.handshake),
                label: 'Need Help?',
                backgroundColor: Color.fromARGB(255, 127, 17, 224)),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_people),
                label: 'Offer Help?',
                backgroundColor: Color.fromARGB(255, 245, 167, 44)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'Account',
                backgroundColor: Color.fromARGB(255, 245, 167, 44))
          ],
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
        ),
        body: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}
