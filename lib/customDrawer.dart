import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              Navigator.pop(context); //close sidebar after user click it
            },
          ),
          ListTile(
            title: Text('Your Services'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Your Requests'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Find a request'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
