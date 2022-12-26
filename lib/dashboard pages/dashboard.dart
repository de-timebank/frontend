import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testfyp/bin/client_user.dart';
import 'package:testfyp/bin/common.dart';
import 'package:testfyp/custom%20widgets/theme.dart';
import 'package:testfyp/dashboard%20pages/serviceDashboardCard.dart';
import 'package:testfyp/navigation.dart';
import 'package:testfyp/rate%20pages/rateGiven.dart';
import 'package:testfyp/request%20pages/request.dart';
import '../components/constants.dart';
import '../custom widgets/customHeadline.dart';
import '../rate pages/rateReceived.dart';
import '../service pages/service.dart';

class DashBoard extends StatefulWidget {
  final onTapped;
  DashBoard({Key? key, this.onTapped}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late final credit;
  late final data;
  bool isLoading = false;

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
    data = await ClientUser(Common().channel).getUserCreditBalance(user);
    //print(data);

    // data = await supabase
    //     .from('user_credits')
    //     .select()
    //     .eq('user_id', user)
    //     .single() as Map;

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
        backgroundColor: themeData2().primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        //elevation: 5,
                        color: themeData1().primaryColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.white),
                                    child: Icon(
                                      Icons.wallet,
                                      color: themeData1().primaryColor,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Time Balance',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                  '\$ Time/hour: ${data.total.toStringAsFixed(2)}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )
                          ],
                        )),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: themeData1().primaryColor,
                              width: 3,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          //elevation: 5,
                          child: InkWell(
                            onTap: () {
                              //d_onItemTapped
                              Navigator.of(context).pushReplacement(
                                CupertinoPageRoute(
                                  //fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      BottomBarNavigation(valueListenable: 1),
                                ),
                              );

                              // Navigator.of(context).pushReplacement(
                              //   CupertinoPageRoute(
                              //     builder: (BuildContext context) {
                              //       return RequestPage();
                              //     },
                              //   ),
                              // );
                              //Navigator.of(context).pushNamed('/request');
                              // PersistentNavBarNavigator.pushNewScreen(
                              //   context,
                              //   screen: RequestPage(),
                              //   //settings: Navigator.pushNamed(),
                              //   withNavBar:
                              //       true, // OPTIONAL VALUE. True by default.
                              //   pageTransitionAnimation:
                              //       PageTransitionAnimation.cupertino,
                              // );
                            },
                            child: Column(
                              children: [
                                CustomHeadline(heading: 'Your Request'),
                                ServiceDashboardCard(isRequest: true)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: themeData1().secondaryHeaderColor,
                              width: 3,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          //elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                CupertinoPageRoute(
                                  //fullscreenDialog: true,
                                  builder: (BuildContext context) =>
                                      BottomBarNavigation(valueListenable: 2),
                                ),
                                // MaterialPageRoute(
                                //   builder: (context) => BottomBarNavigation(
                                //         valueListenable: 2,
                                //       ))
                              );
                            },
                            child: Column(
                              children: [
                                CustomHeadline(heading: 'Your Service'),
                                ServiceDashboardCard(isRequest: false)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //CustomDivider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CustomHeadline(heading: 'Services'),
                  ),
                  Expanded(
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Card(
                                    //elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12)),
                                    ),
                                    color: themeData1().primaryColor,
                                    child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.receipt_long,
                                                color: Colors.white),
                                            Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Text(
                                                  'View Transaction History',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold)
                                                  // style: Theme.of(context)
                                                  //     .textTheme
                                                  //     .headline1,
                                                  ),
                                            ),
                                            //SizedBox(height: 10),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: Text(
                                                'Keep your balance in check',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
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
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: themeData1().primaryColor,
                                      width: 3,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                  ),
                                  //elevation: 5,
                                  //color: Color.fromARGB(255, 234, 234, 234),
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RateGivenPage()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.rate_review,
                                              color: themeData1().primaryColor),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              'Rate Given',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: themeData1()
                                                      .primaryColor),
                                              textAlign: TextAlign.center,
                                              //Theme.of(context).textTheme.headline1,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0),
                                            child: Text(
                                              'Give feedback to other people',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: themeData1()
                                                      .primaryColor),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          // Image.asset('asset/Rate given.png')
                                        ],
                                      )),
                                ),
                              ),
                              //SizedBox(height: 15),
                              Flexible(
                                flex: 1,
                                child: Card(
                                  //elevatio n: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                  ),
                                  color: themeData1().secondaryHeaderColor,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    RateReceivedPage()));
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.thumbs_up_down,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              'Received Rating',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                              // style:
                                              //Theme.of(context).textTheme.headline1,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7.0),
                                            child: Text(
                                              'See what other people thinks about you',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center,
                                            ),
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
                  const SizedBox(height: 10)
                ],
              ),
      ),
    );
  }
}
