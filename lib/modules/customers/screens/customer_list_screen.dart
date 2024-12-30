import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodnamamain/global_widgets/appbars.dart';
import 'package:foodnamamain/global_widgets/appdialogs.dart';
import 'package:foodnamamain/global_widgets/bottom_nav_bar.dart';
import 'package:foodnamamain/global_widgets/my_custom_drawer.dart';

// ignore: must_be_immutable
class CustomerListScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  CustomerListScreen({super.key, required this.arguments});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          AppDialogs.basicDialog(context,
              content: Text(
                "Do you want to exit from the app?",
                style: TextStyle(color: Colors.white),
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
                  label: Text("Yes"),
                  icon: Icon(Icons.check_circle),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      iconColor: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: Text("No"),
                  icon: Icon(Icons.cancel_rounded),
                )
              ]);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBarsWidgets.appBarVer2(
          title: Text(widget.arguments!.containsKey('title')
              ? widget.arguments!['title']
              : "Customer List"),
        ),
        drawer: MyCustomDrawer.getDrawer(),
        body: Center(
          child: Text(currentPage.toString()),
        ),
        floatingActionButton: const SizedBox.shrink(),
        bottomNavigationBar: MyCustomBottomNavigatonBar.getBottomNavbar(
          context,
          currentPageIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
            if (currentPage case 0) {
              Navigator.pushNamed(context, '/dashboard',
                  arguments: {'title': 'Dashboard'});
            } else if (currentPage case 1) {
              Navigator.pushReplacementNamed(context, '/customer-list',
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
