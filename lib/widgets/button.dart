import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';

class CustomButton extends StatelessWidget {
  String? label = "";
  Color? labelColor;
  FontWeight? fontWeight;
  String? fontFamily;
  Function? onPressed;
  double? height = 40.0;
  double? width = 120.0;
  double? disabledElevation = 0.0;
  double? hoverElevation = 0.0;
  double? focusElevation = 0.0;
  double? highlightElevation = 0.0;
  double? elevation = 0.0;
  double? minWidth = Get.size.width;
  bool? isIcon;
  Widget? icon;
  Gradient? gradient;
  double? fontSize = 16;

  CustomButton({
    this.label,
    this.labelColor,
    this.fontWeight,
    this.fontFamily,
    this.onPressed,
    this.height = 40.0,
    this.width = 120.0,
    this.disabledElevation = 0.0,
    this.hoverElevation = 0.0,
    this.focusElevation = 0.0,
    this.highlightElevation = 0.0,
    this.elevation = 0.0,
    this.isIcon = false,
    this.icon,
    this.gradient,
    this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: ThemeColors.colorPrimaryOrange,
        //gradient: gradient ?? LinearGradient(colors: AppColors().commonGradiant),
        borderRadius: BorderRadius.circular(10),
      ),
      // color: ThemeColors.colorPrimaryOrange,
      child: MaterialButton(
        splashColor: Colors.transparent,
        disabledElevation: disabledElevation,
        hoverElevation: hoverElevation,
        focusElevation: focusElevation,
        highlightElevation: highlightElevation,
        elevation: elevation,
        minWidth: minWidth ?? Get.size.width,
        onPressed: () {
          if (onPressed != null) {
            onPressed!.call();
          }
        },
        child: isIcon!
            ? icon
            : Text(
          label ?? "",
          style: TextStyle(
            fontSize: fontSize?? 16,
            color: labelColor??Colors.white,
            fontWeight: fontWeight??FontWeight.bold,
          ),
        ),
      ),
    );
  }
}