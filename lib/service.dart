import 'package:flutter/material.dart';
import 'customDrawer.dart';

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
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)
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
                                      borderRadius: BorderRadius.circular(10)),
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
                  )
                ],
              ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.search),
          label: Text('Find Service'),
        ));
  }
}
