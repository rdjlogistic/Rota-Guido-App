import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/widgets/button.dart';
import 'package:rota_guido/widgets/text_field.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: RaisedButton(
      child: Text('Open Dialog'),
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) {
              return MyDialog();
            });
      },
    )));
  }
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.white.withOpacity(0.8),
      // backgroundColor: Colors.transparent.withOpacity(0.0),
      content: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              child: Icon(
                Icons.close,
                color: ThemeColors.blueTextColor,
              ),
              alignment: Alignment.topRight,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Richiesta Info",
            style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontSize: 34, fontFamily: Fonts.robotoBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad ", style: TextStyle(fontFamily: Fonts.robotoRegular, fontSize: 16), textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 5,
      backgroundColor: Colors.white.withOpacity(0.9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: SingleChildScrollView(
        child: Container(
          // height: Get.height/1.1,
          height: 600,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  child: Icon(
                    Icons.close,
                    color: ThemeColors.blueTextColor,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Richiesta Info",
                style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontSize: 34, fontFamily: Fonts.robotoBold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad ", style: TextStyle(fontFamily: Fonts.robotoRegular, fontSize: 16), textAlign: TextAlign.center),
              const SizedBox(
                height: 20,
              ),
              Container(
                width:Get.width/1.5,
                child: CustomTextField(
                  fillColor: ThemeColors.whiteColor,

                  // textEditingController: _emailTextController,
                  hint: "Nome",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: Fonts.robotoMedium,
                  hintColor: ThemeColors.blueTextColor,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  contentPaddingLeft: 15.0,
                  contentPaddingRight: 15.0,
                  contentPaddingTop: 15.0,
                  contentPaddingBottom: 15.0,
                  isPrefixIcon: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width:Get.width/1.5,
                child: CustomTextField( fillColor: ThemeColors.whiteColor,
                  // textEditingController: _emailTextController,
                  hint: "Cognome",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: Fonts.robotoMedium,
                  hintColor: ThemeColors.blueTextColor,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  contentPaddingLeft: 15.0,
                  contentPaddingRight: 15.0,
                  contentPaddingTop: 15.0,
                  contentPaddingBottom: 15.0,
                  isPrefixIcon: false,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: ThemeColors.whiteColor,
                width:Get.width/1.5,
                height: 150,
                child: CustomTextField(
                  fillColor: ThemeColors.whiteColor,
                  maxLine: null,
                  // textEditingController: _emailTextController,
                  hint: "Testo",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: Fonts.robotoMedium,
                  hintColor: ThemeColors.blueTextColor,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  contentPaddingLeft: 15.0,
                  contentPaddingRight: 15.0,
                  contentPaddingTop: 15.0,
                  contentPaddingBottom: 15.0,
                  isPrefixIcon: false,

                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Container(
                // margin: const EdgeInsets.only(left: 15),
                // height: MediaQuery.of(context).size.height / 3.5,
                alignment: Alignment.center,
                child: CustomButton(
                  height: 50,
                  label: "Invia",
                  fontSize: 24,
                  labelColor: ThemeColors.textField,
                  width: MediaQuery.of(context).size.width / 2,
                  isIcon: false,
                  onPressed: () {

                  },

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

/*
class CustomAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String? title;
  final String? message;
  final String? positiveBtnText;
  final String ?negativeBtnText;
  final Function? onPostivePressed;
  final Function? onNegativePressed;
  final double circularBorderRadius;

  CustomAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white,
    this.positiveBtnText,
    this.negativeBtnText,
    this.onPostivePressed,
    this.onNegativePressed,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title!) : null,
      content: message != null ? Text(message!) : null,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius)),
      actions: <Widget>[
        negativeBtnText != null
            ? FlatButton(
          child: Text(negativeBtnText),
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            Navigator.of(context).pop();
            if (onNegativePressed != null) {
              onNegativePressed();
            }
          },
        )
            : null,
        positiveBtnText != null
            ? FlatButton(
          child: Text(positiveBtnText),
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            if (onPostivePressed != null) {
              onPostivePressed();
            }
          },
        )
            : null,
      ],
    );
  }
}*/

///use
///Please add more than one songs!
/*var dialog = CustomAlertDialog(
    title: "Logout",
    message: "Are you sure, do you want to logout?",
    onPostivePressed: () {},
    positiveBtnText: 'Yes',
    negativeBtnText: 'No');
showDialog(
context: context,
builder: (BuildContext context) => dialog);*/
