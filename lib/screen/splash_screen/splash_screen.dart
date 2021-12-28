import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rota_guido/key.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final storage = GetStorage();

  @override
  void initState() {
      Future.delayed(Duration(seconds: 4), () {
    if (storage.hasData(signTrue) && storage.read(signTrue) == true) {
    Get.offAllNamed(Routes.HOME);
    } else{
    Get.offAllNamed(Routes.SIGN_IN);
    }
      });
    super.initState();
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
