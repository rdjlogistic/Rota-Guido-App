import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';
import 'package:rota_guido/widgets/text_field.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(0),
          physics: const ClampingScrollPhysics(),
          children: [
            Stack(
              children: [
                /* Container(
                  decoration: BoxDecoration( borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),color: ThemeColors.lightBlue),
                  height: 450,
                  // color: ThemeColors.lightBlue,
                ),*/
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x54000000),
                        spreadRadius: 1,
                        blurRadius: 20,
                        offset: Offset(0.0, 1.0),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 370),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                    child: Container(
                      color: ThemeColors.textField,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          const SizedBox(height: 80),

                          ///Login Text
                          Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Inserisci il Codice",
                                style: TextStyle(fontFamily: Fonts.robotoBold, fontSize: 32, color: ThemeColors.blueTextColor),
                              )),

                          const SizedBox(height: 30),

                          ///Text Filed Email
                          CustomTextField(
                            // textEditingController: _emailTextController,
                            hint: "Codice",
                            fontWeight: FontWeight.normal,
                            fontFamily: Fonts.robotoMedium,
                            hintColor: ThemeColors.textColor,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.start,
                            contentPaddingLeft: 15.0,
                            contentPaddingRight: 15.0,
                            contentPaddingTop: 15.0,
                            contentPaddingBottom: 15.0,
                            isPrefixIcon: true,
                            prefixIcon: Image.asset(
                              Images.verifyIcon,
                              scale: 2.5,
                            ),
                          ),

                          const SizedBox(height: 40),

                          ///Login Button
                          Container(
                            // margin: const EdgeInsets.only(top: 100),
                            // height: MediaQuery.of(context).size.height / 3.5,
                            alignment: Alignment.center,
                            child: CustomButton(
                              height: 50,
                              label: "Entra",
                              labelColor: ThemeColors.textField,
                              width: MediaQuery.of(context).size.width / 1.2,
                              isIcon: true,
                              onPressed: () {
                                Get.toNamed(Routes.REMOTEOPTION);
                              },
                              icon: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Images.nextArrow,
                                    scale: 2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("Entra", style: TextStyle(color: ThemeColors.textField, fontFamily: Fonts.robotoMedium, fontSize: 18)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          ///Text Richiedi Info
                          GestureDetector(
                            onTap: (){},
                              child: Text(
                            "Richiedi Info",
                            style: TextStyle(
                              color: ThemeColors.blueTextColor,
                              fontSize: 18,
                              fontFamily: Fonts.robotoMedium,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    Images.splashImage,
                    scale: 10,
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(top: 60),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    Images.smart,
                    // scale: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
