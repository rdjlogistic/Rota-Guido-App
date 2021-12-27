import 'dart:async';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/screen/home_screen/home_screen.dart';

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
  Future<void> signUp(String email, String password) async {
    try {
      final CognitoSignUpOptions options = CognitoSignUpOptions(userAttributes: {'email': email});
      await Amplify.Auth.signUp(username: email, password: password, options: options);
      Get.toNamed(Routes.HOME);
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
  Future<void> signIn(String email, String password) async {
    try {
      await Amplify.Auth.signIn(username: email, password: password);
      Get.offAll(HomeScreen());
      // Get.offAllNamed(Routes.HOME);
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
    }
  }

  /// Signs out the current user which will emit
  /// [User.empty] from the [user] Stream.
  Future<void> logOut() async {
    try {
      await Amplify.Auth.signOut();
    } on Exception {
      rethrow;
    }
  }
}
