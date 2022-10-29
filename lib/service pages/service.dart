import 'package:flutter/material.dart';
import 'serviceDetails.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 127, 17, 224),
          title: Text('Service'),
        ),
        body: isEmpty
            ? Center(
                child: Text('No available service'),
              )
            : ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Card(
                      elevation: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceDetails(),
                              ));
                          // showDialog(
                          //     context: context,
                          //     builder: ((context) => AlertDialog(
                          //           title: Text(
                          //               'Help Me with some Python Programming'),
                          //           content: ListView(
                          //             shrinkWrap: true,
                          //             children: [
                          //               Text('Requestor'),
                          //               Text('John Smith'),
                          //               Text('Category'),
                          //               Text('Programming, Python, uhh'),
                          //               Text('Location'),
                          //               Text('IIUM'),
                          //               Text('Description'),
                          //               Text('This is just a test'),
                          //               Card(
                          //                 child: Padding(
                          //                   padding: const EdgeInsets.all(15.0),
                          //                   child: Row(
                          //                     mainAxisAlignment:
                          //                         MainAxisAlignment.spaceAround,
                          //                     children: [
                          //                       Text('Rate'),
                          //                       Text('\$1 time/hour'),
                          //                     ],
                          //                   ),
                          //                 ),
                          //               ),
                          //               TextFormField(
                          //                 controller: rateServiceController,
                          //                 decoration: InputDecoration(
                          //                     border: OutlineInputBorder(),
                          //                     hintText: 'Enter Title'),
                          //                 validator: (value) {
                          //                   if (value == null ||
                          //                       value.isEmpty) {
                          //                     return 'Please enter some text';
                          //                   }
                          //                   return null;
                          //                 },
                          //                 // onFieldSubmitted: (value) {
                          //                 //   reqList[0]['Title'] = value;
                          //                 // },
                          //               ),
                          //             ],
                          //           ),
                          //           actions: [
                          //             TextButton(
                          //                 onPressed: (() {
                          //                   Navigator.pop(context, 'Rate');
                          //                 }),
                          //                 child: Text('Rate')),
                          //             TextButton(
                          //                 onPressed: (() {
                          //                   Navigator.pop(context, 'Cancel');
                          //                 }),
                          //                 child: Text('Cancel'))
                          //           ],
                          //         )));
                        },
                        child: Row(
                          children: [
                            Flexible(
                              flex: 4,
                              child: Container(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Help Me with some Python Programming',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)
                                        //     Theme.of(context).textTheme.headline1,
                                        ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('John Smith',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('3\$ Time/hour'),
                                    ))),
                            IconButton(
                                onPressed: (() {}),
                                icon: Icon(Icons.favorite_border_outlined))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 127, 17, 224),
          onPressed: () {},
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}
