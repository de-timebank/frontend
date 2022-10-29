import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:testfyp/navigation.dart';
import 'package:testfyp/pages/account_page.dart';
import 'package:testfyp/pages/loginPage.dart';
import 'package:testfyp/pages/password.dart';
import 'package:testfyp/pages/signUpPage.dart';
import 'package:testfyp/pages/splash_page.dart';
import 'package:testfyp/profile.dart';

//adb shell am start -W -a android.intent.action.VIEW -d "io.supabase.flutterquickstart://login-callback/"

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://qcoqbidwruiakpykidlf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFjb3FiaWR3cnVpYWtweWtpZGxmIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjYzNDEzODYsImV4cCI6MTk4MTkxNzM4Nn0.ol5POkel6KTRNrDk7Z_yUvYhzJ7_SXbY7Yt94Wvzi-Q',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.purple,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/signup': (_) => const SignUpPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
        '/navigation': (_) => const BottomBarNavigation(),
        '/profile': (_) => ProfilePage(),
        '/passwordReset': (_) => PasswordPage(),
      },
    );
  }
}
