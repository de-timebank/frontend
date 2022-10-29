import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/constants.dart';
import 'package:testfyp/pages/signUpPage.dart';

class PasswordRecoveryPage extends StatefulWidget {
  const PasswordRecoveryPage({super.key});

  @override
  _PasswordRecoveryPageState createState() => _PasswordRecoveryPageState();
}

class _PasswordRecoveryPageState extends State<PasswordRecoveryPage> {
  bool _isLoading = false;
  bool _redirecting = false;
  late final TextEditingController _emailController;
  //late final TextEditingController _passwordController;
  //late final StreamSubscription<AuthState> _authStateSubscription;

  Future<void> _passwordRecover() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await supabase.auth.resetPasswordForEmail(
        _emailController.text,
        redirectTo: kIsWeb ? null : 'io.supabase.flutter://reset-callback/',
      );
      if (mounted) {
        context.showSnackBar(
            message: 'Check your email for Password Recovery!');
        _emailController.clear();
      }
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      context.showErrorSnackBar(message: 'Unexpected error occured');
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _emailController = TextEditingController();
    //_passwordController = TextEditingController();
    // _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
    //   if (_redirecting) return;
    //   final session = data.session;
    //   if (session != null) {
    //     _redirecting = true;
    //     Navigator.of(context).pushReplacementNamed('/dashboard');
    //   }
    // });
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    // _passwordController.dispose();
    // _authStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Password Recovery')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        children: [
          const Text('Enter your email'),
          const SizedBox(height: 18),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          // const SizedBox(height: 18),
          // TextFormField(
          //   controller: _passwordController,
          //   decoration: const InputDecoration(labelText: 'Password'),
          // ),
          // const SizedBox(height: 18),
          ElevatedButton(
            onPressed: _isLoading ? null : _passwordRecover,
            child: Text(_isLoading ? 'Loading' : 'Submit'),
          ),
          // ElevatedButton(
          //   onPressed: _isLoading ? null : _passwordRecover,
          //   child: Text('Forgot Password'),
          // ),
          TextButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ));
            }),
            child: Text('Sign Up'),
          ),
          ElevatedButton(
              onPressed: (() {
                Navigator.of(context).pushNamed('/navigation');
              }),
              child: Text('Skip (for developers)'))
        ],
      ),
    );
  }
}
