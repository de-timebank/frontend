import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/rate%20pages/rateProvider.dart';
import '../components/constants.dart';
import '../custom widgets/customHeadline.dart';
import '../custom widgets/customOngoingTask.dart';
import '../rate pages/rateRequestor.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late final credit;
  late final data;
  bool isLoading = false;

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
  void initState() {
    super.initState();
    getCredit();
    //Future.delayed(Duration.zero, getCredit);
  }

  getCredit() async {
    setState(() {
      isLoading = true;
    });
    final user = supabase.auth.currentUser!.id;
    data = await supabase
        .from('user_credits')
        .select()
        .eq('user_id', user)
        .single() as Map;

    setState(() {
      isLoading = false;
    });
    //print(data!['total']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeadline('Your Service'),
                  CustomOngoingTask(listService),
                  CustomHeadline('Your Request'),
                  CustomOngoingTask(listRequest),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 219, 216, 233),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Time Balance',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 24, 54, 66)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                                '\$time/hour: ${data!["total"].toString()}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 24, 54, 66))),
                          )
                        ],
                      )),
                  Divider(
                      //horizontal line
                      color: Theme.of(context).primaryColor,
                      height: 30,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20),
                  Expanded(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Card(
                                  elevation: 5,
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                                'View Transaction History',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold)
                                                // style: Theme.of(context)
                                                //     .textTheme
                                                //     .headline1,
                                                ),
                                          ),
                                          //SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                'Keep your balance in check'),
                                          ),
                                          //SizedBox(height: 10),
                                          // Ink.image(
                                          //   image: AssetImage('asset/folder.png'),
                                          //   height: 40,
                                          //   width: 40,
                                          // ),
                                        ],
                                      )),
                                ),
                              ),
                            ]),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Card(
                                  elevation: 5,
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RateProviderPage()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Rate Given',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                            //Theme.of(context).textTheme.headline1,
                                          ),
                                          Text(
                                            'Give feedback to other people',
                                            style: TextStyle(fontSize: 13),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      )),
                                ),
                              ),
                              //SizedBox(height: 15),
                              Flexible(
                                flex: 1,
                                child: Card(
                                  elevation: 5,
                                  color: Color.fromARGB(255, 234, 234, 234),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RateRequestorPage()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Received Rating',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                            // style:
                                            //Theme.of(context).textTheme.headline1,
                                          ),
                                          Text(
                                            'See what other thinks about you',
                                            style: TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
      ),
    );
  }
}
