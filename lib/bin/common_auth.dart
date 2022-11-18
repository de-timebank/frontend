// import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// import '../components/constants.dart';
// import 'package:testfyp/splash_page.dart';

// class CommonAuth {
//   final _usernameController = TextEditingController();
//   final _contactController = TextEditingController();
//   final _matricController = TextEditingController();
//   final _genderController = TextEditingController();
//   final _skillController = TextEditingController();
//   // late String _avatarUrl = '';

//   var skills = [];
//   var contacts = [];
//   var _loading = true;

//   _addskills(String skill) {
//     skills.add(skill);
//   }

//   _addcontact(String contact) {
//     skills.add(contact);
//   }

//   /// Called once a user id is received within `onAuthenticated()`
//   Future<void> _getProfile() async {
//     // setState(() {
//     //   _loading = true;
//     // });

//       final userId = supabase.auth.currentUser!.id; //map the user ID
//       final data = await supabase
//           .from('user_profile')
//           .select()
//           .eq('user_id', userId)
//           .single() as Map;
//       _usernameController.text = (data['name'] ?? '') as String;
//       // _contactController.text = (data['website'] ?? '') as String;
//       _matricController.text = (data['matric_number'] ?? '') as String;
//       _genderController.text = (data['gender'] ?? '') as String;
//       skills.add(data['skills'] ?? '');
//       contacts.add(data['contacts'] ?? '');
      

//     // setState(() {
//     //   _loading = false;
//     // });
//   }

//   /// Called when user taps `Update` button
//   Future<void> _updateProfile() async {
//     // setState(() {
//     //   _loading = true;
//     // });
//     final userName = _usernameController.text;
//     // final website = _contactController.text;
//     final matricNum = _matricController.text;
//     final user = supabase.auth.currentUser;
//     final gender = _genderController.text;
//     // final description = _skillController.text;
//     //print(user!.id);
//     //final avatar =
//     //final skills = _skillsController;
//     final updates = {
//       'user_id': user!.id,
//       'name': userName,
//       'skills': skills,
//       'contacts': contacts,
//       'updated_at': DateTime.now().toIso8601String(),
//       'matric_number': matricNum,
//       'gender': gender,
//       // 'avatar_url': _avatarUrl,
//     };
//     try {
//       await supabase.from('user_profile').upsert(updates);
//       if (mounted) {
//         context.showSnackBar(message: 'Successfully updated profile!');
//         Navigator.of(context).pop();
//         // Navigator.of(context).popUntil((route) => route.isFirst);
//         // Navigator.pushReplacement(
//         //     context,
//         //     MaterialPageRoute(
//         //         builder: (BuildContext context) => BottomBarNavigation()));
//       }
//     } on PostgrestException catch (error) {
//       context.showErrorSnackBar(message: error.message);
//     } catch (error) {
//       context.showErrorSnackBar(message: 'Unable to Update Profile');
//     }
//     setState(() {
//       _loading = false;
//     });
//   }

//   Future<void> _signOut() async {
//     try {
//       await supabase.auth.signOut();
//     } on AuthException catch (error) {
//       context.showErrorSnackBar(message: 'error signing out');
//     } catch (error) {
//       context.showErrorSnackBar(message: 'Unable to signout');
//     }
//     if (mounted) {
//       //Navigator.of(context).pushReplacementNamed('/');
//       Navigator.of(context).popUntil((route) => route.isFirst);
//       Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//               builder: (BuildContext context) => const SplashPage()));
//     }
//   }
// }
