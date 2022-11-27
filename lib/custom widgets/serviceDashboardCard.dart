import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/components/constants.dart';

class ServiceDashboardCard extends StatefulWidget {
  const ServiceDashboardCard({super.key});

  @override
  State<ServiceDashboardCard> createState() => _ServiceDashboardCardState();
}

class _ServiceDashboardCardState extends State<ServiceDashboardCard> {
  late final _serviceList;
  late final _serviceListFiltered = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getinstance();
  }

  _getinstance() async {
    final user = supabase.auth.currentUser!.id;
    _serviceList =
        await ClientServiceRequest(Common().channel).getResponse('state', '0');

    //print(_serviceList.requests[0].applicants.length);
    for (int i = 0; i < _serviceList.requests.length; i++) {
      for (int j = 0; j < _serviceList.requests[i].applicants.length; j++) {
        if (_serviceList.requests[i].applicants[j] == user) {
          _serviceListFiltered.add(_serviceList.requests[i].applicants[j]);
        }
      }
    }

    //print(_serviceListFiltered);
    //print(_serviceList);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total Service: '),
          Text('Pending: '),
          Text('Accepted: '),
          Text('Ongoing: '),
          Text('Completed: '),
        ],
      ),
    );
  }
}
