// import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/dashboard%20pages/dashboard.dart';
import 'package:testfyp/profile%20pages/profile.dart';
import 'bin/client_service_request.dart';
import 'bin/common.dart';
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

  // getCurrentUser(String id) {
  //   if (id == '94dba464-863e-4551-affd-4258724ae351') {
  //     return ujaiahmad;
  //   } else if (id == 'cd54d0d0-23ef-437c-8397-c5d5d754691f') {
  //     return ammar; //ujai junior
  //   } else {
  //     return evergreen; //e6a7c29b-0b2d-4145-9211-a4e9b545102a
  //   }
  // }

  // void getinstance() async {
  //   listFiltered = [];
  //   final user = supabase.auth.currentUser!.id;
  //   _userCurrent = getCurrentUser(user);

  //   listRequest =
  //       await ClientServiceRequest(Common().channel).getResponse('state', '0');

  //   for (var i = 0; i < listRequest.requests.length; i++) {
  //     if (listRequest.requests[i].requestor != _userCurrent) {
  //       listFiltered.add(listRequest.requests[i]);
  //     }
  //     //print(listFiltered);
  //   }
  //   //print(listRequest);
  //   setState(() {
  //     isLoad = false;
  //     isEmpty();
  //   });
  //   //print(listRequest.requests.length);
  // }

  // availableServicefilter(dynamic _list) {
  //   for (var i = 0; i < listRequest.requests.length; i++) {
  //     if (listRequest.requests[i].requestor != _userCurrent) {
  //       listFiltered.add(listRequest.requests[i]);
  //     }
  //     //print(listFiltered);
  //   }
  // }

  // yourServicefilter() {
  //   //to be completed
  // }

  // bool isEmpty() {
  //   if (listFiltered.length == 0) {
  //     _isEmpty = true;
  //     return _isEmpty;
  //   } else {
  //     _isEmpty = false;
  //     return _isEmpty;
  //   }
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   //_authStateSubscription.cancel();
  //   super.dispose();
  // }

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
          backgroundColor: Theme.of(context).primaryColor,
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
