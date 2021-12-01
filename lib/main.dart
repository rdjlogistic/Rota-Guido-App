import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      defaultTransition: Transition.fade,

      onGenerateRoute: RouteGenerator().generateRoute,
      initialBinding: BindingsBuilder(() {
        // Get.put<SplashController>(SplashController());
      }),
    );
  }
}
