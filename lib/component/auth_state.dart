// In order to handle deep links for Android and iOS,
//let's create a class that will do just that. supabase_flutter
//plugin comes with SupabaseAuthState class where we can inherit
//from to react to various deep link events.
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
//import 'package:supabase_quickstart/utils/constants.dart';
import 'package:testfyp/utils/constants.dart';
//import 'C:\flutter\flutter clone repositories\frontend\lib\utils\constants.dart';

class AuthState<T extends StatefulWidget> extends SupabaseAuthState<T> {
  @override
  void onUnauthenticated() {
    if (mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
    }
  }

  @override
  void onAuthenticated(Session session) {
    if (mounted) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/account', (route) => false);
    }
  }

  @override
  void onPasswordRecovery(Session session) {}

  @override
  void onErrorAuthenticating(String message) {
    context.showErrorSnackBar(message: message);
  }
}
