import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/appdialogs.dart';
import 'package:foodnamamain/global_widgets/bottom_nav_bar.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';
import 'package:foodnamamain/modules/customers/screens/customer_list_screen.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  DashboardScreen({super.key, required this.arguments});

  @override
  State<DashboardScreen> createState() => _DashboarScreenState();
}

class _DashboarScreenState extends State<DashboardScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          AppDialogs.basicDialog(context,
              content: const Text(
                "Do you want to exit from the app?",
                // style: TextStyle(color: Colors.white),
              ),
              actionsAlignment: MainAxisAlignment.spaceAround,
              actions: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      iconColor: Colors.white),
                  onPressed: () {
                    exit(0);
                  },
                  label: const Text("Yes"),
                  icon: const Icon(Icons.check_circle),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      iconColor: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: const Text("No"),
                  icon: const Icon(Icons.cancel_rounded),
                )
              ]);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBarsWidgets.appBarVer4(
          title: Text(widget.arguments!.containsKey('title')
              ? widget.arguments!['title']
              : "Dashboard"),
        ),
        drawer: MyCustomDrawer.getDrawer(),
        body: Center(
          child: Text(currentPage.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AppDialogs.basicModelBottomSheet(context,
                title: CustomerListScreen(
                    arguments: {'title': "Customer Dcreen"}));
          },
        ),
        bottomNavigationBar: MyCustomBottomNavigatonBar.getBottomNavbar(
          context,
          currentPageIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
            if (currentPage case 0) {
              Navigator.pushReplacementNamed(context, '/dashboard',
                  arguments: {'title': 'Dashboard'});
            } else if (currentPage case 1) {
              Navigator.pushNamed(context, '/customer-list',
                  arguments: {'title': 'Customer List'});
            } else if (currentPage case 2) {
              Navigator.pushNamed(context, '/transaction',
                  arguments: {'title': 'Transaction'});
            } else {
              Navigator.pushNamed(context, '/profile',
                  arguments: {'title': 'Profile'});
            }
          },
        ),
        bottomSheet: SizedBox.fromSize(),
      ),
    );
  }
}
