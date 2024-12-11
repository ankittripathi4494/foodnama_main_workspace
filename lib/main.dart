import 'package:flutter/material.dart';
import 'package:foodnamamain/modules/splash/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Foodnama",
      home: SplashScreen(),
    );
  }
}


//MaterialApp