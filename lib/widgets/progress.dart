import 'package:flutter/material.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:rota_guido/theme/image.dart';


class LoadingDialog  extends StatelessWidget {
  Color? color = Colors.white;
  double? width = 60.0;
  double? height = 60.0;
  bool? isDisMissile = false;

  LoadingDialog({this.color, this.width, this.height, this.isDisMissile});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDisMissile!,
      child: Center(
        child: Container(
          color: color,
          width: width,
          height: height,
          child: Lottie.asset(Images.Loging),
          // child: CircularProgressIndicator(color: ThemeColors.codeBlue,),
        ),
      ),
    );
  }
}