import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/modules/login/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarsWidgets.appBarVer1(
          titleText: "Splash Screen",
          implyLeading: false,
          centeredTitle: true,
          darkTheme: true),
      drawer: const SizedBox.shrink(),
      body: const SizedBox.shrink(), // blank Area
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        },
      ),
      bottomNavigationBar: const SizedBox.shrink(),
      bottomSheet: SizedBox.fromSize(),
    );
  }
}
