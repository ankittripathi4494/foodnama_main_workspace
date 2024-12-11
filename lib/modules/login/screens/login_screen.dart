import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarsWidgets.appBarVer4(
          title: const Text("Login Screen"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_important)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ]),

      body: const SizedBox.shrink(), // blank Area
      floatingActionButton: const SizedBox.shrink(),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
