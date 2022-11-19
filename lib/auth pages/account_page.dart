import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:testfyp/components/avatar.dart';
import 'package:testfyp/components/constants.dart';
import 'package:testfyp/extension_string.dart';
import 'package:testfyp/splash_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final _usernameController = TextEditingController();
  final _contactController = TextEditingController();
  final _matricController = TextEditingController();
  final _genderController = TextEditingController();
  final _skillController = TextEditingController();
  // late String _avatarUrl = '';

  late List<dynamic> skills;
  late List<dynamic> contacts;
  var _loading = true;

  @override
  void initState() {
    super.initState();

    //_getProfile();
    Future.delayed(Duration.zero, _getProfile);
  }

  _addskills(String skill) {
    setState(() {
      skills.add(skill);
    });
  }

  _deleteSkill(String skill) {
    setState(() {
      skills.removeWhere((element) => element == skill);
    });
  }

  _deleteContact(String skill) {
    setState(() {
      contacts.removeWhere((element) => element == skill);
    });
  }

  _addcontact(String contact) {
    setState(() {
      contacts.add(contact);
    });
  }

  Future<void> _getProfile() async {
    skills = [];
    contacts = [];
    setState(() {
      _loading = true;
    });

    try {
      final userId = supabase.auth.currentUser!.id; //map the user ID
      final data = await supabase
          .from('user_profile')
          .select()
          .eq('user_id', userId)
          .single() as Map;
      _usernameController.text = (data['name'] ?? '') as String;
      // _contactController.text = (data['website'] ?? '') as String;
      _matricController.text = (data['matric_number'] ?? '') as String;
      _genderController.text = (data['gender'] ?? '') as String;
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
    } on PostgrestException catch (error) {
      if (_usernameController.text == '') {
        context.showSnackBar(message: 'Welcome to BUDI!');
      } else {
        context.showErrorSnackBar(message: error.message);
      }
    } catch (error) {
      context.showErrorSnackBar(message: 'Missing Description');
    }

    setState(() {
      _loading = false;
    });
  }

  // _updateContact() async{
  //   final user = supabase.auth.currentUser;
  //   final updates = {
  //     'user_id': user!.id,
  //     'skills': skills,
  //     'contacts': contacts,
  //     'updated_at': DateTime.now().toIso8601String(),
  //     // 'avatar_url': _avatarUrl,
  //   };
  //   try {
  //     await supabase.from('user_profile').upsert(updates);
  //   } on PostgrestException catch (error) {
  //     context.showErrorSnackBar(message: error.message);
  //   } catch (error) {
  //     context.showErrorSnackBar(message: 'Unable to Update Profile');
  //   }
  // }

  /// Called when user taps `Update` button
  Future<void> _updateProfile() async {
    setState(() {
      _loading = true;
    });
    final userName = _usernameController.text;
    // final website = _contactController.text;
    final matricNum = _matricController.text;
    final user = supabase.auth.currentUser;
    final gender = _genderController.text;
    // final description = _skillController.text;
    //print(user!.id);
    //final avatar =
    //final skills = _skillsController;
    final updates = {
      'user_id': user!.id,
      'name': userName,
      'skills': skills,
      'contacts': contacts,
      'updated_at': DateTime.now().toIso8601String(),
      'matric_number': matricNum,
      'gender': gender,
      // 'avatar_url': _avatarUrl,
    };
    try {
      await supabase.from('user_profile').upsert(updates);
      if (mounted) {
        context.showSnackBar(message: 'Successfully updated profile!');
        Navigator.of(context).pop();
        // Navigator.of(context).popUntil((route) => route.isFirst);
        // Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //         builder: (BuildContext context) => BottomBarNavigation()));
      }
    } on PostgrestException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      context.showErrorSnackBar(message: 'Unable to Update Profile');
    }
    setState(() {
      _loading = false;
    });
  }

  Future<void> _signOut() async {
    try {
      await supabase.auth.signOut();
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: 'error signing out');
    } catch (error) {
      context.showErrorSnackBar(message: 'Unable to signout');
    }
    if (mounted) {
      //Navigator.of(context).pushReplacementNamed('/');
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const SplashPage()));
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _contactController.dispose();
    _matricController.dispose();
    _genderController.dispose();
    _skillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
        // backgroundColor: Color.fromARGB(255, 127, 17, 224),
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
              children: [
                // Avatar(
                //   imageUrl: _avatarUrl,
                //   onUpload: _onUpload,
                // ),
                const SizedBox(height: 18),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(labelText: 'User Name'),
                ),
                TextFormField(
                  controller: _genderController,
                  decoration: const InputDecoration(labelText: 'Gender'),
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
                      suffixIcon: ElevatedButton(
                        onPressed: () {
                          try {
                            _addskills(_skillController.text);
                            _skillController.clear();
                            context.showSnackBar(message: 'skill Added!');
                          } catch (e) {
                            context.showErrorSnackBar(
                                message: 'Unable to add skill');
                          }
                        },
                        child: Icon(Icons.add),
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
                SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: skills.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(skills[index].toString().capitalize()),
                                SizedBox(
                                  height: 5,
                                ),
                                IconButton(
                                    onPressed: () {
                                      _deleteSkill(skills[index].toString());
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Add Contacts',
                      labelText: 'Contact',
                      suffixIcon: ElevatedButton(
                        onPressed: () {
                          try {
                            _addcontact(_contactController.text);
                            _contactController.clear();
                            context.showSnackBar(message: 'Contact Added!');
                          } catch (e) {
                            context.showErrorSnackBar(
                                message: 'Unable to add contact');
                          }
                        },
                        child: Icon(Icons.add),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter contacts';
                    }
                    return null;
                  },
                ),
                Text('Your Contacts: '),
                SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(contacts[index].toString().capitalize()),
                                SizedBox(
                                  height: 5,
                                ),
                                IconButton(
                                    onPressed: () {
                                      _deleteContact(
                                          contacts[index].toString());
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
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    _updateProfile();
                  },
                  child: Text(_loading ? 'Loading...' : 'Update'),
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    // Navigator.pushReplacement(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) =>
                    //             BottomBarNavigation()));
                  }),
                  child: Text('Go to DashBoard'),
                ),
                TextButton(onPressed: _signOut, child: const Text('Sign Out')),
              ],
            ),
    );
  }
}
