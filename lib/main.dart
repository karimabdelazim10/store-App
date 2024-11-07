import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:headphone_app/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:headphone_app/screens/log_in_screen.dart';
import 'package:headphone_app/screens/screen_page.dart';
import 'package:headphone_app/screens/sign_up.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const HeadPhoneApp());
}

class HeadPhoneApp extends StatefulWidget {
  const HeadPhoneApp({super.key});

  @override
  State<HeadPhoneApp> createState() => _HeadPhoneAppState();
}

class _HeadPhoneAppState extends State<HeadPhoneApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        "signup": (context) => SignUp(),
        'login': (context) => LogInScreen(),
        'screenpage': (context) => ScreenPage(),
      },
    );
  }
}
