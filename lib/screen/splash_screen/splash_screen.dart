import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rota_guido/aws_auth.dart';
import 'package:rota_guido/key.dart';
import 'package:rota_guido/providers.dart';
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
    Future.delayed(Duration(seconds: 4), () async {
      if (storage.hasData(signTrue) && storage.read(signTrue) == true) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.SIGN_IN);
        final authAWSRepo = context.read(authAWSRepositoryProvider);
        await authAWSRepo.logOut();
        context.refresh(authUserProvider);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Locale appLocale = Localizations.localeOf(context);
    storage.write(appLocales,appLocale);
    print(" Show ======> ${appLocale}");

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
