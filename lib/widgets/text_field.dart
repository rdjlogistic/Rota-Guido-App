import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

class CustomTextField extends StatefulWidget {
  Function(String)? onChanged;
  Function(String)? onSubmitted;
  String? hint = "";
  TextInputType? keyboardType = TextInputType.text;
  List<TextInputFormatter>? inputFormatters;
  TextInputAction? textInputAction = TextInputAction.done;
  bool? obscureText = false;
  bool? isPasswordEye = false;
  bool? isPrefixIcon = false;
  Widget? prefixIcon;
  TextAlign? textAlign = TextAlign.center;
  double? contentPaddingTop = 0.0;
  double? contentPaddingBottom = 0.0;
  double? contentPaddingLeft = 0.0;
  double? contentPaddingRight = 0.0;
  double? fontSize;
  double? fontHintSize;
  String? fontFamily;
  int? maxLength;
  Color? hintColor = ThemeColors.textField;
  Color? fillColor = ThemeColors.textField;
  TextEditingController? textEditingController = TextEditingController(text: "");
  FontWeight? fontWeight;
  bool? readOnly;
  int? maxLine ;

  CustomTextField({
    this.onChanged,
    this.onSubmitted,
    this.hint,
    this.textInputAction,
    this.textEditingController,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText = false,
    this.isPasswordEye = false,
    this.textAlign,
    this.contentPaddingTop = 0.0,
    this.contentPaddingBottom = 0.0,
    this.contentPaddingLeft = 15.0,
    this.contentPaddingRight = 15.0,
    this.fontSize,
    this.fontHintSize,
    this.fontFamily,
    this.hintColor,
    this.maxLength,
    this.isPrefixIcon = false,
    this.prefixIcon,
    this.fontWeight = FontWeight.bold,
    this.readOnly = false,
    this.maxLine,
    this.fillColor
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  _passwordToggle() {
    setState(() {
      widget.obscureText = !widget.obscureText!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width/1.2,
      child: TextField(
        maxLines: widget.maxLine,
        controller: widget.textEditingController ??  TextEditingController(text: ""),
        autocorrect: true,
        readOnly: widget.readOnly??false,
        onChanged: widget.onChanged ?? (values) {},
        onSubmitted: widget.onSubmitted ?? (values) {},
        maxLength: widget.maxLength,
        textAlign: widget.textAlign ?? TextAlign.center,
        obscureText: widget.obscureText ?? false,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        inputFormatters: widget.inputFormatters ?? [],
        style: TextStyle(
          color: ThemeColors.blueTextColor,
          fontFamily: Fonts.robotoMedium,
          letterSpacing: 0.0,
          fontSize: widget.fontSize ?? 16.0,
        ),
        cursorColor: ThemeColors.textField,
        decoration: InputDecoration(
          counterText: "",
          prefixIcon: widget.isPrefixIcon! ? widget.prefixIcon : null,
          suffixIcon: widget.isPasswordEye!
              ? ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent), shadowColor: MaterialStateProperty.all(Colors.transparent)),
            child: !widget.obscureText! ?  Image.asset(Images.eye, scale: 3.5) : Image.asset(Images.hideEye, scale: 3.5),
            onPressed: _passwordToggle,
          )
              : null,
          hintText: widget.hint ?? "",
          contentPadding: EdgeInsets.only(
            bottom: widget.contentPaddingBottom!,
            top: widget.contentPaddingTop!,
            left: widget.contentPaddingLeft!,
            right: widget.contentPaddingRight!,
          ),
          hintStyle: TextStyle(color: widget.hintColor, fontSize: widget.fontHintSize ?? 15.0, fontWeight: widget.fontWeight, fontFamily: widget.fontFamily ?? null),
          filled: true,
          // fillColor: ThemeColors.textFiledBackground,
          fillColor: widget.fillColor,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.transparent, width: 0),
          ),
        ),
      ),
    );
  }
}