import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Get.offAllNamed(Routes.SIGN_IN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            // alignment: Alignment.center,
            child: Image.asset(
              Images.splashImage,
              scale: 1.0,
            )),
      ),
    );
  }
}
