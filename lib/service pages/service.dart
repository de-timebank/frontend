import 'package:flutter/material.dart';
import 'package:testfyp/service%20pages/available_service.dart';
import 'package:testfyp/service%20pages/completedService.dart';
import 'package:testfyp/service%20pages/yourServices.dart';
import 'package:badges/badges.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              bottom:
                  TabBar(indicatorColor: Theme.of(context).primaryColor, tabs: [
                Tab(text: '\t\t\tYour\nServices'),
                Badge(
                    showBadge: false,
                    badgeContent: Text('!'),
                    animationType: BadgeAnimationType.scale,
                    animationDuration: Duration(milliseconds: 100),
                    child: Tab(text: 'Available\n\t\t\t\tJob')),
                Tab(text: 'Completed\n\t\t\t\t\tJob')
              ]),
              // backgroundColor: Color.fromARGB(255, 127, 17, 224),
              title: const Text('Help people with your service'),
            ),
            body: TabBarView(
              children: [
                YourServices(),
                AvailableServices(),
                CompletedServices()
              ],
            )));
  }
}
