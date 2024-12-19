import 'package:flutter/material.dart';
import 'package:foodnamamain/utils/routes.dart';

void main(List<String> args) {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Foodnama",
      initialRoute: '/', // first navigator route
      onGenerateRoute: GenerateRoutePageSystem.getKnownRoutes,
    );
  }
}


//MaterialApp