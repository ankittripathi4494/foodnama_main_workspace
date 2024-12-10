import 'package:flutter/material.dart';
import 'package:foodnamamain/modules/splash/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foodnama",
      home: SplashScreen(),
    );
  }
}


//MaterialApp