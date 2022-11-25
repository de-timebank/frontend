import 'package:flutter/material.dart';

class ServiceDashboardCard extends StatefulWidget {
  const ServiceDashboardCard({super.key});

  @override
  State<ServiceDashboardCard> createState() => _ServiceDashboardCardState();
}

class _ServiceDashboardCardState extends State<ServiceDashboardCard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Service: '),
            Text('Pending: '),
            Text('Accepted: '),
            Text('Ongoing: '),
            Text('Completed: '),
          ],
        ),
      ),
    );
  }
}
