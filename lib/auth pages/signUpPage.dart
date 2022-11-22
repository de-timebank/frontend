import 'dart:async';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/bin/client_auth.dart';
import 'package:testfyp/bin/common.dart';
//import 'package:testfyp/auth%20pages/account_page.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import 'package:testfyp/generated/rating/user.pbgrpc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isLoading = false;
  bool _redirecting = false;
  bool _passwordVisible = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _contactController = TextEditingController();
  final _contactControllerType = TextEditingController();
  final _matricController = TextEditingController();
  final _genderController = TextEditingController();
  final _skillController = TextEditingController();

  List<String> listGender = <String>['male', 'female'];
  List<String> listContactType = <String>[
    'WhatsApp',
    'Email',
    'Phone',
    'Twitter'
  ];
  late NewUserProfile profile;
  late List<String> skills;
  late List<Contact> contacts;
  // late NewUserProfile _userProfile1 = NewUserProfile();
  //late Common _common;
  late final StreamSubscription<AuthState> _authStateSubscription;

  @override
  void initState() {
    profile = NewUserProfile();
    _genderController.text = listGender[0];
    _contactControllerType.text = listContactType[2];
    skills = [];
    contacts = [];
    _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      if (_redirecting) return;
      final session = data.session;
      if (session != null) {
        _redirecting = true;
        // Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //         builder: (BuildContext context) => AccountPage()));
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/account', (route) => false);
      }
    });

    super.initState();
  }

  _signUpGrpc(String email, String password, String name, String gender,
      String matricnumber) {
    // profile..contacts.addAll(contacts);
    // profile.skills.toList();
    // var profile1 = NewUserProfile(contacts: Contact()..address = address..type = type);
    profile
      ..name = name
      ..gender = gender
      ..matricNumber = matricnumber;
    // print(profile.skills);
    // print(profile.contacts);
    print(profile.toProto3Json());
    // profile = NewUserProfile()
    //   ..name = name
    //   // ..skills.add(skills.toString())
    //   // ..contacts.add(contacts)
    //   ..gender = gender
    //   ..matricNumber = matricnumber;
    ClientAuth(Common().channel).signUpUser(email, password, profile);
  }

  _addskills(String skill) {
    setState(() {
      profile..skills.insert(0, skill);
      //print(profile.skills);
      //skills.insert(0, skill);
    });
  }

  _deleteSkill(String skill) {
    setState(() {
      profile.skills.removeWhere((element) => element == skill);
    });
  }

  _deleteContact(String contact) {
    setState(() {
      profile.contacts.removeWhere((element) => element.address == contact);
    });
  }

  _addcontactgrpc(String type, String address) {
    // Contact contact2 = Contact();
    // contact2.type = type;
    // contact2.address = address;
    var contact2 = Contact()
      ..address = address
      ..type = type;

    setState(() {
      profile..contacts.insert(0, contact2);
      //print(profile);
      //print(profile);
      //contacts.insert(0, contact2);
      //print(contacts);
    });
  }

  _isSkillsEmpty(dynamic stuff) {
    if (stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  _isContactsEmpty(dynamic stuff) {
    if (stuff.length == 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _authStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: [
          const Text('Sign in via the magic link with your email below'),
          const SizedBox(height: 18),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
          ),
          const SizedBox(height: 18),
          TextFormField(
            controller: _passwordController,
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: 'Do not close this page when signing up',
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(labelText: 'User Name'),
          ),

          // TextFormField(
          //   controller: _genderController,
          //   decoration: const InputDecoration(labelText: 'Gender'),
          // ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Gender'),
              Container(
                //padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    )),
                child: DropdownButton<String>(
                  underline: Container(
                    height: 0,
                  ),
                  iconEnabledColor: Theme.of(context).primaryColor,
                  value: _genderController.text,
                  items: listGender.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                        value: e,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            e,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _genderController.text = value.toString();
                      //print(_genderController.text);
                    });
                  },
                ),
              ),
            ],
          ),
          TextFormField(
            controller: _matricController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Matric Number'),
          ),
          TextFormField(
            controller: _skillController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: 'Add Skills',
                labelText: 'Skill',
                suffixIcon: TextButton(
                  onPressed: () {
                    try {
                      _addskills(_skillController.text);
                      _skillController.clear();
                      context.showSnackBar(message: 'Skill added!');
                      setState(() {
                        _isSkillsEmpty(profile.skills);
                      });
                    } catch (e) {
                      context.showErrorSnackBar(message: 'Unable to add skill');
                    }
                  },
                  child: const Icon(Icons.add),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter skill';
              }
              return null;
            },
          ),
          SizedBox(height: 8),
          Text('Your Skills: '),
          _isSkillsEmpty(profile.skills)
              ? Text('You have not entered any skills...')
              : SizedBox(
                  height: 60,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: profile.skills.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(profile.skills[index]
                                  .toString()
                                  .capitalize()),
                              SizedBox(
                                height: 5,
                              ),
                              IconButton(
                                  onPressed: () {
                                    _deleteSkill(
                                        profile.skills[index].toString());
                                  },
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  )),
          TextFormField(
            controller: _contactController,
            decoration: InputDecoration(
                hintText: 'Add Contacts',
                labelText: 'Contact',
                suffixIcon: SizedBox(
                  width: 190,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          try {
                            //_addcontact(_contactController.text);
                            _addcontactgrpc(_contactControllerType.text,
                                _contactController.text);
                            _contactController.clear();
                            context.showSnackBar(message: 'Contact Added!');
                            setState(() {
                              _isContactsEmpty(profile.contacts);
                            });
                          } catch (e) {
                            context.showErrorSnackBar(
                                message: 'Unable to add contact');
                          }
                        },
                        child: Icon(Icons.add),
                      ),
                      Container(
                        //padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            )),
                        child: DropdownButton<String>(
                          underline: Container(
                            height: 0,
                          ),
                          iconEnabledColor: Theme.of(context).primaryColor,
                          value: _contactControllerType.text,
                          items: listContactType
                              .map<DropdownMenuItem<String>>((e) {
                            return DropdownMenuItem<String>(
                                value: e,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _contactControllerType.text = value.toString();
                              //print(_genderController.text);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter contacts';
              }
              return null;
            },
          ),
          Text('Your Contacts: '),
          _isContactsEmpty(profile.contacts)
              ? Text('You have not entered any contacts...')
              : SizedBox(
                  height: 60,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: profile.contacts.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(profile.contacts[index].type
                                      .toString()
                                      .capitalize()),
                                  Text(profile.contacts[index].address
                                      .toString()),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              IconButton(
                                  onPressed: () {
                                    _deleteContact(profile
                                        .contacts[index].address
                                        .toString());
                                    //print(contacts[index].address.toString());
                                  },
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  )),
          const SizedBox(height: 18),
          ElevatedButton(
            onPressed: () {
              // Iterable<String> newSkills;
              // skills.map((e) => return )
              try {
                _signUpGrpc(
                    _emailController.text,
                    _passwordController.text,
                    _usernameController.text,
                    // skills,
                    // contacts,
                    _genderController.text,
                    _matricController.text);
                context.showSnackBar(message: 'Signing up...');
              } catch (e) {
                context.showErrorSnackBar(message: e.toString());
              }
            },
            child: Text(_isLoading ? 'Loading' : 'Sign Up'),
          ),
          // ElevatedButton(
          //     onPressed: (() {
          //       Navigator.of(context).pushReplacementNamed('/navigation');
          //     }),
          //     child: Text('Skip (for developers)'))
        ],
      ),
    );
  }
}
