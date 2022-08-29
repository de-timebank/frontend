import 'package:flutter/material.dart';
import 'customDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Bank Blockchain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.inter(
          Theme.of(context).textTheme,
        )
        
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: CustomDrawer(), //look at customDrawer.dart
        body: Column(
          children: [
            Text('Recent services'),
            Container(
               height: 100,
               //width: 80,
               margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: [
                  Text('Service 1'),
                  Text('Service 2'),
                  Text('Service 3'),
                  Text('Service 4'),
                  Text('Service 5'),
                  Text('Service 6'),
                  Text('Service 7'),
                ],
              ),
            ),
            Text('Your Requests'),
            Container(
              height: 100,
              //width: 80,
              margin: EdgeInsets.all(20.0),
               decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: [
                  Text('Request 1'),
                  Text('Request 2'),
                  Text('Request 3'),
                  Text('Request 4'),
                  Text('Request 5'),
                  Text('Request 6'),
                  Text('Request 7'),
                ],
              ),
            ),
            Text('Time Balance'),
            Divider( //horizontal line
              height: 50,
              thickness: 2,
              indent: 30,
              endIndent: 30
            ),
            Row(children: [
              Column(
                children: [
                  Text('Find a service request'),
                  Text('Help others with your skills'),
                  InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('asset/folder.png'),
                  height: 100,
                  width: 100,
                  //child: Text('Find a service request'),
                )
              ),
                ]
              ),
              Column(
                children: [
                  Text('Make a request'),
                  Text('Too watana waberiadgabhariel'),
                ],
              ),
            ])
          ],
        ));
  }
}
