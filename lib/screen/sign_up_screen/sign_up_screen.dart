import 'dart:convert';
import 'dart:ui';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:dropdown_below/dropdown_below.dart';
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
import 'package:intl/intl.dart';

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
  final _controller = TextEditingController(text: "");
  bool isChecked = false;

  DateTime now = DateTime.now();

  var email;
  var password;
  var category;
  var farm;

  String _selectedCategory = "";
  String _selectedId = "";
  List items = [];

  List<CategoryModel> CategoryModelList = [];
  String? selectCategory;

  onChangeDropdownCouponLocation(selectedTest) {
    setState(() {
      _selectedCategory = selectedTest['value'];
      _selectedId = selectedTest['id'];
      print(_selectedCategory);
      print(_selectedId);
    });
  }

  List<DropdownMenuItem<Object?>> _dropdownCouponLocation = [];

  List<DropdownMenuItem<Object?>> buildDropdownTestItems(List xyz) {
    List<DropdownMenuItem<Object?>> items = [];
    items.clear();
    for (var i in xyz) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Container(
            height: 20,
            // color: Colors.transparent,
            child: Text(
              i['value'],
              style: TextStyle(fontSize: 15, color: ThemeColors.lightBlue, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      );
    }
    return items;
  }

  Future<List?> getCategoryList() async {
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
      // var data = response.data;
      print(response.data);
      var data = jsonDecode(response.data);
      CategoryModelList.clear();
      for (int i = 0; i < (data["listUserCategories"]["items"] as List).length; i++) {
        CategoryModelList.add(CategoryModel("${data["listUserCategories"]["items"][i]["id"]}", "${data["listUserCategories"]["items"][i]["name"]["textEN"]}"));
      }

      return items;
    } on ApiException catch (e) {
      print('Query failed: $e');
    }
  }

  @override
  void initState() {
    getCategoryList().then((value) => {
          items = value!,
          if (items != null) {_dropdownCouponLocation = buildDropdownTestItems(items)}
        });

    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS-hh:mm").format(now);

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
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(left: 35, right: 35),
                            decoration: BoxDecoration(
                              color: ThemeColors.textFiledBackground,
                              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 20),
                                Image.asset(
                                  Images.category,
                                  scale: 2.5,
                                ),
                                const SizedBox(width: 20),
                                DropdownButtonHideUnderline(
                                  child: Container(
                                    width: Get.size.width / 1.6,
                                    margin: const EdgeInsets.only(right: 10),
                                    child: DropdownButton<String>(
                                      hint: const Text("Categoria"),
                                      value: selectCategory,
                                      icon: const Icon(Icons.arrow_drop_down_sharp),
                                      isDense: true,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectCategory = newValue;
                                        });
                                        // print("selectCategoryID == > $selectCategory");
                                      },
                                      items: CategoryModelList.map((CategoryModel map) {
                                        return DropdownMenuItem<String>(
                                          value: map.id,
                                          child: Text(map.name, style: TextStyle(color: ThemeColors.blueTextColor)),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                )
                              ],
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

                          const SizedBox(height: 10),
                          Container(
                            margin: const EdgeInsets.only(left: 25),
                            // alignment: Alignment.center,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Checkbox(
                                    side: BorderSide(color: ThemeColors.textColor, width: 2),
                                    value: isChecked,
                                    activeColor: ThemeColors.textColor,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 45, top: 15),
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Accetto la privacy ed i Termini del servizio",
                                    style: TextStyle(color: ThemeColors.textColor, fontFamily: Fonts.robotoMedium, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),

                          ///SignUp Button
                          Container(
                            alignment: Alignment.center,
                            child: CustomButton(
                              height: 50,
                              label: "Register",
                              labelColor: ThemeColors.textField,
                              width: MediaQuery.of(context).size.width / 1.5,
                              isIcon: true,
                              onPressed: () async {
                                email = _emailTextController.text.trim();
                                password = _passwordTextController.text.trim();
                                category = _categoryTextController.text.trim();
                                farm = _farmController.text.trim();

                                if (_emailTextController.text.toString().trim().isEmpty) {
                                  Get.snackbar(
                                    "error",
                                    "please enter Valid Email....",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (!isValidEmail.hasMatch(email)) {
                                  // valid email id
                                  Get.snackbar(
                                    "error",
                                    "Please enter valid email...",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (_passwordTextController.text.toString().trim().isEmpty) {
                                  Get.snackbar(
                                    "error",
                                    "please enter Valid Password....",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (_passwordTextController.text.toString().trim().length < 8) {
                                  // valid email id
                                  Get.snackbar(
                                    "Please enter valid Password...",
                                    // "Please enter valid Password...",
                                    "Include lowercase characters\nInclude uppercase characters\nInclude numerals\nInclude symbols\nMin length: 8",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (selectCategory == null) {
                                  Get.snackbar(
                                    "error",
                                    "please select Category....",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (_farmController.text.toString().trim().isEmpty) {
                                  Get.snackbar(
                                    "error",
                                    "please enter Azienda....",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else if (isChecked == false) {
                                  // valid email id
                                  Get.snackbar(
                                    "error",
                                    "Please Accept Privacy ..",
                                    icon: const Icon(Icons.error, color: Colors.redAccent),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    // dismissDirection: SnackDismissDirection.HORIZONTAL,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                } else {
                                  final authAWSRepo = context.read(authAWSRepositoryProvider);
                                  await authAWSRepo.signUp(_emailTextController.text, _passwordTextController.text, _farmController.text, isChecked, selectCategory.toString(), formattedDate, formattedDate, formattedDate);
                                  context.refresh(authUserProvider);
                                  Get.snackbar(
                                    "Success",
                                    "Your Account Create Successfully  ",
                                    icon: const Icon(Icons.done, color: Colors.green),
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.black26,
                                    borderRadius: 20,
                                    margin: const EdgeInsets.all(15),
                                    colorText: Colors.white,
                                    duration: const Duration(seconds: 4),
                                    isDismissible: true,
                                    forwardAnimationCurve: Curves.easeOutBack,
                                  );
                                  Get.toNamed(Routes.SIGN_IN);
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
                    margin: const EdgeInsets.only(top: 30),
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

class CategoryModel {
  String id;
  String name;

  CategoryModel(this.id, this.name);
}
