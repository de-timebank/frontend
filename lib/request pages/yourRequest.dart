import 'package:flutter/material.dart';
import 'package:testfyp/request%20pages/requestDetails1.dart';

import '../bin/client_service_request.dart';
import '../bin/common.dart';
import '../components/constants.dart';
import '../custom widgets/customCardServiceRequest.dart';
import 'requestDetails.dart';
import 'requestForm.dart';

class YourRequest extends StatefulWidget {
  YourRequest({Key? key}) : super(key: key);

  @override
  State<YourRequest> createState() => _YourRequestState();
}

class _YourRequestState extends State<YourRequest> {
  late bool isLoad;
  //late dynamic listRequest;
  late dynamic listFiltered;
  late String user;
  late bool _isEmpty;
  bool isRequest = true;
  //for pagination
  late int from;
  late int to;
  late int finalCount;
  late dynamic data;
  //for listview controller;
  final _scrollController = ScrollController();

  @override
  void initState() {
    isLoad = true;
    _isEmpty = true;
    _scrollController.addListener(
      () {
        if (_scrollController.position.maxScrollExtent ==
            _scrollController.offset) {
          fetch();
          // from += 5;
          // to += 5;

        }
      },
    );
    getinstance();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  changeState(state) {
    switch (state) {
      case 0:
        return 'Pending';
      case 1:
        return 'Accepted';
      case 2:
        return 'Ongoing';
      case 3:
        return 'Completed';
      case 4:
        return 'Aborted';
    }
  }

  isRequested(list) {
    if (list.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  void fetch() async {
    //setState(() {});
    from += 7;
    to += 7;
    // print('from ' + from.toString());
    // print('to ' + to.toString());
    final data1;
    //print('fetching data...');

    data1 = await supabase
        .from('service_requests')
        .select()
        .eq('requestor', user)
        .eq('applicants', []).range(from, to);

    // final data1 = await supabase
    //     .from('service_requests')
    //     .select()
    //     .neq('requestor', user)
    //     .range(from, to);
    setState(() {
      listFiltered.addAll(data1);
    });

    //print('new added list $listFiltered');
    // print(listFiltered);
    // print(listFiltered.length);
  }

  void getinstance() async {
    setState(() {
      isLoad = true;
      from = 0;
      to = 6;
    });
    listFiltered = [];
    user = supabase.auth.currentUser!.id;

    listFiltered.addAll(await supabase
        .from('service_requests')
        .select()
        .eq('requestor', user)
        .eq('applicants', []).range(from, to));
    data = await supabase
        .from('service_requests')
        .select()
        .eq('requestor', user)
        .eq('applicants', []);

    finalCount = data.length;
    //print(finalCount);
    //print(listFiltered);
    setState(() {
      isLoad = false;
      isEmpty();
    });
    //print(listRequest.requests.length);
  }

  bool isEmpty() {
    if (listFiltered.length == 0) {
      _isEmpty = true;
      return _isEmpty;
    } else {
      _isEmpty = false;
      return _isEmpty;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoad
            ? const Center(child: CircularProgressIndicator())
            : _isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Need help from other people?\nRequest help to let people know...',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          margin: EdgeInsets.only(bottom: 0),
                          alignment: Alignment.center,
                          child: Image.asset(
                            'asset/need_help.png',
                            height: MediaQuery.of(context).size.height / 2.3,
                          )),
                    ],
                  )
                : SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: listFiltered.length + 1,
                      itemBuilder: (context, index) {
                        if (index < listFiltered.length) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (context) => RequestDetails1(
                                          requestId: listFiltered[index]['id'],
                                          isRequest: isRequest,
                                          user: user)))
                                  .then((value) => setState(
                                        () {
                                          getinstance();
                                        },
                                      ));
                            },
                            child: CustomCardServiceRequest(
                              location: listFiltered[index]['location']
                                  ['state'],
                              date: listFiltered[index]['date'],
                              state: isRequested(
                                      listFiltered[index]['applicants'])
                                  ? 'No Applicants'
                                  : changeState(listFiltered[index]['state']),
                              requestor: listFiltered[index]['requestor'],
                              title: listFiltered[index]['title'],
                              rate: listFiltered[index]['rate'],
                            ),
                          );
                        } else {
                          if (finalCount < 6) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text('No more data...'),
                            );
                          }
                          if (finalCount < from) {
                            return const Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text('No more data...'),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }
                      },
                    ),
                  ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RequestForm(),
                )).then((value) => setState(
                  () {
                    getinstance();
                  },
                ));
          },
          icon: Icon(Icons.add),
          label: Text('Add Request'),
        ));
  }
}
