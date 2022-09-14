import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 100,
                  child: Image.asset('asset/girl.png')),
              Column(
                children: [
                  Text(
                    'This is a name',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text('This is the description'),
                ],
              ),
            ],
          ),
          Text(
              'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et '),
          Text(
            'Skilled in',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Cooking'),
                  ),
                  margin: EdgeInsets.all(5),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Programming with fast typing'),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('This is another skill that you should'),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Kill me senpai'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
              //horizontal line
              height: 40,
              thickness: 2,
              indent: 30,
              endIndent: 30),
        ],
      ),
    );
  }
}
