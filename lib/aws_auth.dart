import 'dart:async';
import 'dart:convert';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rota_guido/key.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/screen/home_screen/home_screen.dart';
import 'package:rota_guido/widgets/progress.dart';


final storage = GetStorage();

/// Provides methods to interact with Firebase Authentication.
final authAWSRepositoryProvider = Provider<AWSAuthRepository>((ref) => AWSAuthRepository());

class AWSAuthRepository {
  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  Future<String?> get user async {
    try {
      final awsUser = await Amplify.Auth.getCurrentUser();
      return awsUser.userId;
    } catch (e) {
      print("not signed in");
      return null;
    }
  }

  /// Creates a new user with the provided [email] and [password].
  Future<void> signUp(String email, String password,String company,bool privacy,{bool isLoading = true} ) async {
    try {
      if (isLoading) {
        Get.dialog(LoadingDialog(width: 70, height: 70), barrierDismissible: false);
      }

      final CognitoSignUpOptions options = CognitoSignUpOptions(userAttributes: {'email': email});
      await Amplify.Auth.signUp(username: email, password: password, options: options);

          String graphQLDocument = '''mutation (\$input : CreateUserInput!){
  createUser (input:\$input) 
    {
    id
    company
    email
  }
}

''';

          var operation = Amplify.API.query(
              request: GraphQLRequest<String>(
                document: graphQLDocument,
                variables: {
                  "input": {
                    "email": email,
                    "company": company,
                    // "signupDate": "[current date]",
                    // "userCategoryId": "[UserCategoy.id selected in the “Categoria” select ]",
                    "hasPrivacyPolicy": privacy,
                    // "privacyPolicyDate": "[current date]",
                    "hasTos": true,
                    // "tosDate": "[current date]",
                    "authProviderId": ""
                  }
                }
              ));



          var response = await operation.response;
          var data = response.data;
          var temp = jsonDecode(data);
      if (isLoading && Get.isDialogOpen!) {
        Get.back();
      }
          print("data Success ==> ${temp["createUser"]["id"]}");

          storage.write(loginID, temp["createUser"]["id"]);

          print('Query result: ' + data);
          // Get.toNamed(Routes.HOME);
          Get.offAll(HomeScreen());
        } on ApiException catch (e) {
          print('Query failed: $e');

    } /*on Exception {

      rethrow;

    }*/

    on AuthException catch (e) {
      print(e.message);

      Get.snackbar(
        "error",
        "${e.message}",
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
      if (isLoading && Get.isDialogOpen!) {
        Get.back();
      }
    }

  }

  /// Creates a new user with the provided [email] and [password].
  Future<void> confirmSignUp(String email, String confirmationCode) async {
    try {
      await Amplify.Auth.confirmSignUp(username: email, confirmationCode: confirmationCode);
    } on Exception {
      rethrow;
    }
  }

  /// Creates a new user with the provided [email] and [password].
  Future<void> signIn(String email, String password,{bool isLoading = true}) async {
    try {
      if (isLoading) {
        Get.dialog(LoadingDialog(width: 70, height: 70), barrierDismissible: false);
      }

      await Amplify.Auth.signIn(username: email, password: password);
      storage.write(signTrue, true);
      if (isLoading && Get.isDialogOpen!) {
        Get.back();
      }
      // Get.offAll(HomeScreen());
      Get.offAllNamed(Routes.HOME);
    }
    on AuthException catch (e) {
      print(e.message);

      Get.snackbar(
        "error",
        "${e.message}",
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
      if (isLoading && Get.isDialogOpen!) {
        Get.back();
      }
    }

  }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  Future<void> logOut({bool isLoading = true}) async {
    try {
      if (isLoading) {
        Get.dialog(LoadingDialog(width: 70, height: 70), barrierDismissible: false);
      }
      await Amplify.Auth.signOut();
      if (isLoading && Get.isDialogOpen!) {
        Get.back();
      }

    } on Exception {
      rethrow;
    }
  }
}
