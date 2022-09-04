import 'package:flutter/material.dart';
import 'customOngoingTask.dart';
import 'customHeadline.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List listService = [
    'Service 1',
    'Service 2',
    'Service 3',
    'Service 4',
    'Service 5',
    'Service 6',
    'Service 8',
  ];
  List listRequest = [
    'Request 1',
    'Request 2',
    'Request 3',
    'Request 4',
    'Request 5',
    'Request 6',
    'Request 8',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeadline('Your Service'),
          CustomOngoingTask(listService),
          CustomHeadline('Your Request'),
          CustomOngoingTask(listRequest),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Card(
                elevation: 5,
                color: Colors.black54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Time Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text('\$time/hour: 15.50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    )
                  ],
                )),
          ),
          const Divider(
              //horizontal line
              height: 40,
              thickness: 2,
              indent: 30,
              endIndent: 30),
          // Row(
          //   //crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Column(children: [
          //       Card(
          //         child: InkWell(
          //             onTap: () {},
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Text(
          //                     'Find a service\nrequest',
          //                     style: Theme.of(context).textTheme.headline1,
          //                   ),
          //                 ),
          //                 //SizedBox(height: 10),
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Text('Help others with your skills'),
          //                 ),
          //                 //SizedBox(height: 10),
          //                 Ink.image(
          //                   image: AssetImage('asset/folder.png'),
          //                   height: 70,
          //                   width: 70,
          //                 ),
          //               ],
          //             )),
          //       ),
          //     ]),
          //     Column(
          //       //mainAxisAlignment: MainAxisAlignment.center,
          //       //crossAxisAlignment: CrossAxisAlignment.stretch,
          //       children: [
          //         Card(
          //             child: InkWell(
          //                 onTap: () {},
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(15.0),
          //                   child: Text('Make a request\nLet others help you'),
          //                 ))),
          //         //SizedBox(height: 25),
          //         Card(
          //             child: InkWell(
          //           onTap: () {},
          //           child: Padding(
          //             padding: const EdgeInsets.all(15.0),
          //             child: Text('Too watana wabl\non tak on tak on'),
          //           ),
          //         )),
          //       ],
          //     ),
          //   ],
          // )
        ],
      )),
    );
  }
}
