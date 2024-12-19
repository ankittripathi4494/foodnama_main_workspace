import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodnamamain/modules/error/screens/page_not_found_screen.dart';
import 'package:foodnamamain/modules/login/screens/login_screen.dart';
import 'package:foodnamamain/modules/splash/screens/splash_screen.dart';
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
              type: (Platform.isIOS)
                  ? PageTransitionType.fade
                  : PageTransitionType.fade,
              child: SplashScreen(arguments: argus),
              isIos: (Platform.isIOS) ? true : false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: (Platform.isIOS)
                ? PageTransitionType.fade
                : PageTransitionType.fade,
            child: SplashScreen(arguments: const {}),
            isIos: (Platform.isIOS) ? true : false);

      case '/login':
        if (argus is Map<String, dynamic>) {
          return PageTransition(
              curve: Curves.bounceIn,
              duration: Durations.short4,
              type: (Platform.isIOS)
                  ? PageTransitionType.fade
                  : PageTransitionType.fade,
              child: LoginScreen(arguments: argus),
              isIos: (Platform.isIOS) ? true : false);
        }
        return PageTransition(
            curve: Curves.bounceIn,
            duration: Durations.short4,
            type: (Platform.isIOS)
                ? PageTransitionType.fade
                : PageTransitionType.fade,
            child: LoginScreen(arguments: const {}),
            isIos: (Platform.isIOS) ? true : false);

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
          type: (Platform.isIOS)
              ? PageTransitionType.fade
              : PageTransitionType.fade,
          child: PageNotFoundScreen(arguments: argus),
          isIos: (Platform.isIOS) ? true : false);
    }
    return PageTransition(
        curve: Curves.bounceIn,
        duration: Durations.short4,
        type: (Platform.isIOS)
            ? PageTransitionType.fade
            : PageTransitionType.fade,
        child: PageNotFoundScreen(arguments: const {}),
        isIos: (Platform.isIOS) ? true : false);
  }
}
