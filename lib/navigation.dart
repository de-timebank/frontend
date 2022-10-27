import 'package:flutter/material.dart';
import 'package:testfyp/dashboard.dart';
import 'package:testfyp/profile.dart';
import 'package:testfyp/request.dart';
import 'package:testfyp/service.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({Key? key}) : super(key: key);

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
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
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}
