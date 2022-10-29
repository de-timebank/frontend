//splash screen that will be shown
//to users right after they open the app.
//This screen retrieves the current session and
//redirects the user accordingly.

import 'package:flutter/material.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _redicrectCalled = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (_redicrectCalled || !mounted) {
      return;
    }

    _redicrectCalled = true;
    final session = supabase.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/navigation');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
    //  supabase.auth.onAuthStateChange.listen((data) {
    //   final AuthChangeEvent event = data.event;

    //   // if (_redirecting) return;
    //   // final session = data.session;
    //   if (event == AuthChangeEvent.passwordRecovery) {
    //     // handle signIn
    //     Navigator.of(context).pushReplacementNamed('/passwordReset');
    //   }
    //   // if (session != null) {
    //   //   _redirecting = true;
    //   //   Navigator.of(context).pushReplacementNamed('/dashboard');
    //   // }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
