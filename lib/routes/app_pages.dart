
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rota_guido/news_info/news_info.dart';
import 'package:rota_guido/profile_screen/profile_screen.dart';
import 'package:rota_guido/screen/blog_info/blog_info.dart';
import 'package:rota_guido/screen/category_info/category_info.dart';
import 'package:rota_guido/screen/category_screen/category_screen.dart';
import 'package:rota_guido/screen/home_login/home_login.dart';
import 'package:rota_guido/screen/home_screen/home_screen.dart';
import 'package:rota_guido/screen/news_screen/news_screen.dart';
import 'package:rota_guido/screen/remote_info/remote_info.dart';
import 'package:rota_guido/screen/remote_option/remote_option.dart';
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
      case Routes.BLOG_INFo:
        return GetPageRoute(
          page: () => BlogInfo(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );

      case Routes.CATEGORY:
        return GetPageRoute(
          page: () => Category(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.CATEGORY_Info:
        return GetPageRoute(
          page: () => CategoryInfo(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.NEWS:
        return GetPageRoute(
          page: () => NewsScreen(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.NEWSINFO:
        return GetPageRoute(
          page: () => NewsInfo(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.PROFILE:
        return GetPageRoute(
          page: () => Profile(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        );
      case Routes.HOMELOGIN:
        return GetPageRoute(
          page: () => HomeLogin(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        ); case Routes.REMOTEOPTION:
        return GetPageRoute(
          page: () => RemoteOption(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: duration),
        ); case Routes.REMOTEINFO:
        return GetPageRoute(
          page: () => RemoteInfo(),
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
