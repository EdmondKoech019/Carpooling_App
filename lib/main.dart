import 'package:carpooling_app/Screens/Auth/sign_in.dart';
import 'package:carpooling_app/Screens/Auth/sign_up.dart';
import 'package:carpooling_app/Screens/StartScreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarpoolingApp());
}

class CarpoolingApp extends StatelessWidget {
  const CarpoolingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/SignUp_Screen': (context) => const SignUp(),
        '/SignIn_Screen': (context) => const SignIn(),
      },
    );
  }
}
