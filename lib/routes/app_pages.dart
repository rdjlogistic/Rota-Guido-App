
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rota_guido/screen/home_screen/home_screen.dart';
import 'package:rota_guido/screen/sign_in_screen/signin_screen.dart';
import 'package:rota_guido/screen/sign_up_screen/sign_up_screen.dart';
import 'package:rota_guido/screen/splash_screen/splash_screen.dart';


part 'app_routes.dart';

class RouteGenerator {
  int duration = 500;

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH:
        return GetPageRoute(
          page: () => SplashScreen(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.SIGN_IN:
        return GetPageRoute(
          page: () => SignInScreean(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.SIGN_UP:
        return GetPageRoute(
          page: () => Register(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.HOME:
        return GetPageRoute(
          page: () => HomeScreen(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      default:
        return GetPageRoute(
          page: () => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
