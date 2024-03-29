import 'package:cschat/ui/HomeScreen.dart';
import 'package:cschat/ui/LoginScreen.dart';
import 'package:cschat/ui/SignupScreen.dart';
import 'package:cschat/ui/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (BuildContext context) => SplashScreen(),
        "/LoginScreen": (BuildContext context) => LoginScreen(),
        "/SignupScreen": (BuildContext context) => SignupScreen(),
        "/HomeScreen": (BuildContext context) => HomeScreen(),
      },
    );
  }
}
