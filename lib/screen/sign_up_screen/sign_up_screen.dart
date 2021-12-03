import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';
import 'package:rota_guido/widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailTextController = TextEditingController(text: "");
  final _passwordTextController = TextEditingController(text: "");
  final _categoryTextController = TextEditingController(text: "");
  final _farmController = TextEditingController(text: "");

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
                ///White View
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
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                    child: Container(
                      color: ThemeColors.textField,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          ///Logo Image
                          Container(
                            margin: const EdgeInsets.only(top: 60),
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              Images.splashImage,
                              height: 100,
                              width: 100,
                            ),
                          ),

                          const SizedBox(height: 60),

                          ///Login Text
                          Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Registrati",
                                style: TextStyle(fontFamily: Fonts.robotoBold, fontSize: 32, color: ThemeColors.colorPrimaryOrange),
                              )),

                          const SizedBox(height: 30),

                          ///Text Filed Email
                          CustomTextField(
                            textEditingController: _emailTextController,
                            hint: "Email",
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
                              Images.mailIcon,
                              scale: 2.5,
                            ),
                          ),

                          const SizedBox(height: 20),

                          ///Text Filed Email
                          CustomTextField(
                            textEditingController: _passwordTextController,
                            hint: "Password",
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
                              Images.passwordIcon,
                              scale: 2.5,
                            ),
                            isPasswordEye: true,
                            maxLine: 1,
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),

                          CustomTextField(
                            textEditingController: _categoryTextController,
                            hint: "Categoria",
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
                              Images.category,
                              scale: 2.5,
                            ),
                          ),
                          const SizedBox(height: 20),

                          CustomTextField(
                            textEditingController: _farmController,
                            hint: "Azienda Agricola",
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
                              Images.farm,
                              scale: 2.5,
                            ),
                          ),

                          const SizedBox(height: 100),
                          // const SizedBox(height: 50),

                          ///Login Button
                          Container(
                            // margin: const EdgeInsets.only(top: 100),
                            // height: MediaQuery.of(context).size.height / 3.5,
                            alignment: Alignment.center,
                            child: CustomButton(
                              height: 50,
                              label: "Login",
                              labelColor: ThemeColors.textField,
                              width: MediaQuery.of(context).size.width / 1.5,
                              isIcon: true,
                              onPressed: () {
                                Get.toNamed(Routes.HOME);
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
                                  Text("REGISTRATI", style: TextStyle(color: ThemeColors.textField, fontFamily: Fonts.robotoMedium, fontSize: 18)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.topRight,
                    child: MaterialButton(
                      onPressed: () {
                        Get.toNamed(Routes.SIGN_IN);
                      },
                      child: Image.asset(
                        Images.close,
                        scale: 2,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SIGN_IN);
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        )));
  }
}
