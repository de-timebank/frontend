import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_service_request.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/components/constants.dart';

import 'dashboardLoadingText.dart';

class ServiceDashboardCard extends StatefulWidget {
  final isRequest;
  ServiceDashboardCard({super.key, this.isRequest});

  @override
  State<ServiceDashboardCard> createState() => _ServiceDashboardCardState();
}

class _ServiceDashboardCardState extends State<ServiceDashboardCard> {
  late final _serviceList;
  late final _serviceListFiltered = [];
  late final _requestList;
  late int pending = 0;
  late int accepted = 0;
  late int ongoing = 0;
  late int completed = 0;

  late int pendingReq = 0;
  late int acceptedReq = 0;
  late int ongoingReq = 0;
  late int completedReq = 0;
  bool isLoad = true;

  //late final _requestListFiltered = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getinstance();
  }

  _getinstance() async {
    final user = supabase.auth.currentUser!.id;
    _serviceList = await ClientServiceRequest(Common().channel)
        .getResponse('provider', user);

    //get total request
    _requestList = await ClientServiceRequest(Common().channel)
        .getResponse('requestor', user);

    //print(_requestList.requests[0].state == 0);
    for (int i = 0; i < _requestList.requests.length; i++) {
      if (_requestList.requests[i].state.toString() == 'PENDING') {
        pendingReq++;
      }
      if (_requestList.requests[i].state.toString() == 'ACCEPTED') {
        acceptedReq++;
      }
      if (_requestList.requests[i].state.toString() == 'ONGOING') {
        ongoingReq++;
      }
      if (_requestList.requests[i].state.toString() == 'COMPLETED') {
        completedReq++;
      }
    }

    //print(_serviceList);
    //get total service
    for (int i = 0; i < _serviceList.requests.length; i++) {
      for (int j = 0; j < _serviceList.requests[i].applicants.length; j++) {
        if (_serviceList.requests[i].applicants[j] == user &&
            _serviceList.requests[i].state.toString() == 'PENDING') {
          // _serviceListFiltered.add(_serviceList.requests[i].applicants[j]);
          pending++;
        }
      }
      if (_serviceList.requests[i].state.toString() == 'ACCEPTED') {
        // _serviceListFiltered.add(_serviceList.requests[i].applicants[j]);
        accepted++;
      }
      if (_serviceList.requests[i].state.toString() == 'ONGOING') {
        // _serviceListFiltered.add(_serviceList.requests[i].applicants[j]);
        ongoing++;
      }
      if (_serviceList.requests[i].state.toString() == 'COMPLETED') {
        // _serviceListFiltered.add(_serviceList.requests[i].applicants[j]);
        completed++;
      }
    }

    setState(() {
      isLoad = false;
    });
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
          isLoad
              ? DashboardLoadingText(
                  isRequest: widget.isRequest,
                )
              : widget.isRequest
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Request: '),
                              Text('${_requestList.requests.length}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pending: '),
                              Text('${pendingReq}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Accepted: '),
                              Text('${acceptedReq}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ongoing: '),
                              Text('${ongoingReq}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Completed: '),
                              Text('${completedReq}')
                            ],
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Service: '),
                              Text('${_serviceListFiltered.length}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Pending: '), Text('${pending}')],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Accepted: '), Text('${accepted}')],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Ongoing: '), Text('${ongoing}')],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Completed: '),
                              Text('${completed}')
                            ],
                          ),
                        ],
                      ),
                    ),
          //SizedBox(height: 15),
        ],
      ),
    );
  }
}
