import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Homepage'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Your Services'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Your Requests'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Find a request'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {},
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Column(
          children: [
            Text('Recent services'),
            Text('Your Requests'),
            Text('Time Balance'),
            Row(children: [
              Text('Find a service request'),
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
