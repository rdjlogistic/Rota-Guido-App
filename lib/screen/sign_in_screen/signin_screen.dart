import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:get/get.dart';
import 'package:rota_guido/aws_auth.dart';
import 'package:rota_guido/providers.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';
import 'package:rota_guido/widgets/text_field.dart';
import 'package:rota_guido/widgets/validation.dart';

class SignInScreean extends StatefulWidget {
  const SignInScreean({Key? key}) : super(key: key);

  @override
  _SignInScreeanState createState() => _SignInScreeanState();
}

class _SignInScreeanState extends State<SignInScreean> {
  final _emailTextController = TextEditingController(text: "");
  final _passwordTextController = TextEditingController(text: "");

  bool isChecked = false;

  var emailId;
  var password;

/*   exampleListNewsAPICall() async {
    try {
      String graphQLDocument = '''query {
listUserCategories(filter: {isActive: {eq:
true}}) { items {
id name {
textEN }
} }
}
''';

      var operation = Amplify.API.query(
          request: GraphQLRequest<String>(
        document: graphQLDocument,
      ));

      var response = await operation.response;
      var data = response.data;

      print('Query result: ' + data);
    } on ApiException catch (e) {
      print('Query failed: $e');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    // exampleListNewsAPICall();

    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Scaffold(
              backgroundColor: ThemeColors.textField,
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
                                  // margin: const EdgeInsets.only(top: 60),
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
                                      "Login",
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
                                const SizedBox(height: 25),
                                Container(
                                  margin: EdgeInsets.only(left: 100),
                                  // alignment: Alignment.center,
                                  child: Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Checkbox(
                                          value: isChecked,
                                          side: BorderSide(color: ThemeColors.textColor, width: 2),
                                          // activeColor: ThemeColors.textColor,
                                          activeColor: ThemeColors.textColor,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                              print(value);
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 45, top: 15),
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Recorda accesso",
                                          style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 25),

                                /// Text Password
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Password smarrita?",
                                      style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 18),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 120),
                                // const SizedBox(height: 75),

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
                                    onPressed: () async {
                                      emailId = _emailTextController.text.trim();
                                      password = _passwordTextController.text.trim();

                                      if (_emailTextController.text.toString().trim().isEmpty) {
                                        Get.snackbar(
                                          "error",
                                          "please enter Valid Email....",
                                          icon: Icon(Icons.error, color: Colors.redAccent),
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.black26,
                                          borderRadius: 20,
                                          margin: EdgeInsets.all(15),
                                          colorText: Colors.white,
                                          duration: Duration(seconds: 4),
                                          isDismissible: true,
                                          // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                          forwardAnimationCurve: Curves.easeOutBack,
                                        );
                                      } else if (!isValidEmail.hasMatch(emailId)) {
                                        // valid email id
                                        Get.snackbar(
                                          "error",
                                          "Please enter valid email...",
                                          icon: Icon(Icons.error, color: Colors.redAccent),
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.black26,
                                          borderRadius: 20,
                                          margin: EdgeInsets.all(15),
                                          colorText: Colors.white,
                                          duration: Duration(seconds: 4),
                                          isDismissible: true,
                                          // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                          forwardAnimationCurve: Curves.easeOutBack,
                                        );
                                      } else if (_passwordTextController.text.toString().trim().isEmpty) {
                                        Get.snackbar(
                                          "error",
                                          "please enter Valid Password....",
                                          icon: Icon(Icons.error, color: Colors.redAccent),
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.black26,
                                          borderRadius: 20,
                                          margin: EdgeInsets.all(15),
                                          colorText: Colors.white,
                                          duration: Duration(seconds: 4),
                                          isDismissible: true,
                                          // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                          forwardAnimationCurve: Curves.easeOutBack,
                                        );
                                      } else if (_passwordTextController.text.toString().trim().length<8) {
                                        // valid email id
                                        Get.snackbar(
                                          "error",
                                          "Please enter valid Password...",
                                          icon: Icon(Icons.error, color: Colors.redAccent),
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.black26,
                                          borderRadius: 20,
                                          margin: EdgeInsets.all(15),
                                          colorText: Colors.white,
                                          duration: Duration(seconds: 4),
                                          isDismissible: true,
                                          // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                          forwardAnimationCurve: Curves.easeOutBack,
                                        );
                                      } else if (isChecked != false) {
                                        // valid email id
                                        Get.snackbar(
                                          "error",
                                          "Please enter valid Password...",
                                          icon: Icon(Icons.error, color: Colors.redAccent),
                                          snackPosition: SnackPosition.TOP,
                                          backgroundColor: Colors.black26,
                                          borderRadius: 20,
                                          margin: EdgeInsets.all(15),
                                          colorText: Colors.white,
                                          duration: Duration(seconds: 4),
                                          isDismissible: true,
                                          // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                          forwardAnimationCurve: Curves.easeOutBack,
                                        );
                                      } else {
                                        ///api calling

                                        final authAWSRepo = context.read(authAWSRepositoryProvider);
                                        await authAWSRepo.signIn(_emailTextController.text, _passwordTextController.text);
                                        context.refresh(authUserProvider);
                                      }
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
                                        Text("LOGIN", style: TextStyle(color: ThemeColors.textField, fontFamily: Fonts.robotoMedium, fontSize: 18)),
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
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGN_UP);
                      },
                      child: Text(
                        "Registrati",
                        style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Text(
                        "navigate without  ",
                        style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            )));
  }
}
