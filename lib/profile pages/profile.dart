import 'dart:async';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/auth%20pages/account_page.dart';
import 'package:testfyp/extension_string.dart';

import '../bin/client_rating.dart';
import '../bin/common.dart';

//import 'package:testfyp/splash_page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String _username = '';
  late String _matric = '';
  late String _gender = '';
  late final userId;
  late dynamic _userCalculatedRating = 0;
  late dynamic _userRating;
  // late dynamic user;

  String _avatarUrl = 'asset/girl.png';
  late List<dynamic> skills;
  late List<dynamic> contacts;
  var _loading = true;

  @override
  void initState() {
    super.initState();
    userId = supabase.auth.currentUser!.id;
    supabase.auth.onAuthStateChange.listen((data) {});
    Future.delayed(Duration.zero, _getProfile);
    _getRating();
  }

  bool isEmpty(stuff) {
    if (stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  _getRating() async {
    _userRating = await ClientRating(Common().channel)
        .getResponseRating('recipient', userId);
    //print(_userRating.toString());
    //calculate rating
    //map((m) => m.ratings['value']!).average;
    for (int i = 0; i < _userRating.ratings.length; i++) {
      _userCalculatedRating =
          _userCalculatedRating + _userRating.ratings[i].value;
      //print(_userCalculatedRating);
    }
    //print(_userCalculatedRating / _userRating.ratings.length);
    //_userCalculatedRating = _userRating.print(_userCalculatedRating.toString());
    //print(_userRating.ratings[2].value);
  }

  Future<void> _getProfile() async {
    skills = [];
    contacts = [];
    setState(() {
      _loading = true;
    });

    try {
      // final userId = supabase.auth.currentUser!.id;
      final data = await supabase
          .from('profiles')
          .select()
          .eq('user_id', userId)
          .single() as Map;
      _username = (data['name'] ?? '') as String;
      // _website = (data['website'] ?? '') as String;
      // _avatarUrl = (data['avatar_url'] ?? '') as String;
      _matric = (data['matric_number'] ?? '') as String;
      _gender = (data['gender'] ?? '') as String;
      for (int i = 0; i < data['skills'].length; i++) {
        if (data['skills'][i] != '') {
          skills.add(data['skills'][i]);
        }
      }
      for (int i = 0; i < data['contacts'].length; i++) {
        if (data['contacts'][i] != '') {
          contacts.add(data['contacts'][i]);
        }
      }
      // _getRating(user);
      // print(skills[0][2]);
      // print(contacts);
      // _desc = (data['description'] ?? '') as String;
    } on PostgrestException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      context.showErrorSnackBar(message: 'Unexpected exception occured');
    }

    setState(() {
      _loading = false;
    });
  }

  bool isAvatarEqual() {
    if (_avatarUrl == 'asset/girl.png') {
      return true;
    } else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountPage(),
                  )).then((value) => setState(
                    () {
                      _getProfile();
                    },
                  ));
            },
          )
        ],
        title: Text('Profile Page'),
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 219, 216, 233),
                                //border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  _username,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 10),
                                Text('Matric Id: $_matric'),
                                SizedBox(height: 8),
                                Text('Gender: ${_gender.capitalize()}'),
                                SizedBox(height: 8),
                                Text('Contact:'),
                                SizedBox(height: 8),
                                isEmpty(contacts)
                                    ? Text(
                                        'You have not entered any contacts..')
                                    : Expanded(
                                        child: SizedBox(
                                          //height: 50,
                                          child: ListView.builder(
                                            physics:
                                                const BouncingScrollPhysics(),
                                            itemCount: contacts.length,
                                            itemBuilder: (context, index) {
                                              return Row(
                                                children: [
                                                  Text(
                                                      '${index + 1}) ${contacts[index]['type'].toString()}'),
                                                  Text(
                                                      ', ${contacts[index]['address'].toString()}'),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Skilled in',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15)
                        //style: Theme.of(context).textTheme.headline1,
                        ),
                  ),
                  isEmpty(skills)
                      ? Text('You have not entered any skills')
                      : SizedBox(
                          height: 50,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: skills.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Text(skills[index]
                                          .toString()
                                          .capitalize())),
                                ),
                              );
                            },
                          )),
                  const Divider(
                      //horizontal line
                      height: 10,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Card(
                          elevation: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Rating',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              isEmpty(_userRating.ratings)
                                  ? Text('No Rating')
                                  : Text(
                                      '${(_userCalculatedRating / _userRating.ratings.length).toStringAsFixed(2)}')
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}
