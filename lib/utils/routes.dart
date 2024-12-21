import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodnamamain/modules/customers/screens/add_customer_screen.dart';
import 'package:foodnamamain/modules/customers/screens/customer_list_screen.dart';
import 'package:foodnamamain/modules/dashboard/screens/dashboard_screen.dart';
import 'package:foodnamamain/modules/error/screens/page_not_found_screen.dart';
import 'package:foodnamamain/modules/login/screens/login_screen.dart';
import 'package:foodnamamain/modules/profile/screens/profile_screen.dart';
import 'package:foodnamamain/modules/splash/screens/splash_screen.dart';
import 'package:foodnamamain/modules/transactions/screens/transaction_screen.dart';
import 'package:page_transition/page_transition.dart';

class GenerateRoutePageSystem {
  static Route<dynamic>? getKnownRoutes(RouteSettings settings) {
    var argus = settings.arguments;
    switch (settings.name) {
      case '/':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: SplashScreen(arguments: argus),
          );
        }
        return PageTransition(
          curve: Curves.bounceIn,
          duration: Durations.short4,
          type: PageTransitionType.fade,
          child: SplashScreen(arguments: const {}),
        );

      case '/login':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: LoginScreen(arguments: argus),
          );
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: LoginScreen(arguments: const {}),
            isIos: false);
      case '/dashboard':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: DashboardScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: DashboardScreen(arguments: const {}),
            isIos: false);
      case '/profile':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: ProfileScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: ProfileScreen(arguments: const {}),
            isIos: false);
      case '/transaction':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: TransactionScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: TransactionScreen(arguments: const {}),
            isIos: false);
      case '/customer-list':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: CustomerListScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: CustomerListScreen(arguments: const {}),
            isIos: false);

      case '/add-customer':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: PageTransitionType.fade,
              child: AddCustomerScreen(arguments: argus),
              isIos: false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: PageTransitionType.fade,
            child: AddCustomerScreen(arguments: const {}),
            isIos: false);

      default:
        return getUnknownRoutes(settings);
    }
  }

  static Route<dynamic>? getUnknownRoutes(RouteSettings settings) {
    var argus = settings.arguments;

    if (argus is Map<String, dynamic>) {
      return PageTransition(
          curve: Curves.bounceIn,
          duration: Durations.short4,
          type: PageTransitionType.fade,
          child: PageNotFoundScreen(arguments: argus),
          isIos: false);
    }
    return PageTransition(
        curve: Curves.bounceIn,
        duration: Durations.short4,
        type: PageTransitionType.fade,
        child: PageNotFoundScreen(arguments: const {}),
        isIos: false);
  }
}
