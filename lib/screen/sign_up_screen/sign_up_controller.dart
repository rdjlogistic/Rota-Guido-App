import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpController extends GetxController {

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

 /* Future<dynamic> signUp(String userName, String firstName, String lastName, String email, String password, File profilePicture, {bool isLoading = true}) async {
    var profilePictureMultipart;
    print("signUp input Data => $userName");
    print("signUp input Data => $firstName");
    print("signUp input Data => $lastName");
    print("signUp input Data => $email");
    print("signUp input Data => $password");
    print("signUp input Data => $profilePicture");

    if (profilePicture.path != "") {
      var stream = new http.ByteStream(DelegatingStream.typed(profilePicture.openRead()));
      var length = await profilePicture.length();
      profilePictureMultipart = new http.MultipartFile('file', stream, length, filename: basename(profilePicture.path));
    }

    if (isLoading) {
      Get.dialog(LoadingDialog(width: 250, height: 250), barrierDismissible: false);
    }

    String register = """mutation accountRegister(\$input: AccountRegisterInput!) {
  accountRegister(input: \$input) {
    user {
      id
      email
      firstName
      lastName
      profilePicture
    }
  }
}""";

    GraphQLClient client = GraphQLClient(link: network.httpLink, cache: GraphQLCache());
    var result = await client.query(QueryOptions(
        document: gql(register),
        variables: {
          "input": {
            "userName": userName,
            "firstName": firstName,
            "lastName": lastName,
            "email": email,
            "password": password,
            "profilePicture": profilePicture.path != "" ? profilePictureMultipart : ""
          }
        }));

    if (isLoading && Get.isDialogOpen!) {
      Get.back();
    }

    if (result.data != null && result.data!["accountRegister"] != null) {
      print("User Register Successfully");
    } else if (result.exception!.graphqlErrors.length > 0) {
      Get.snackbar("Register Fail", result.exception!.graphqlErrors[0].message.toString(), icon: Icon(Icons.error, color: Colors.white), colorText: Colors.white, backgroundGradient: LinearGradient(colors: AppColors().commonGradiant), snackPosition: SnackPosition.TOP, backgroundColor: AppColors().otherText);
    } else {
      Get.snackbar("Network Error", "No Internet", icon: Icon(Icons.error, color: Colors.white), colorText: Colors.white, backgroundGradient: LinearGradient(colors: AppColors().commonGradiant), snackPosition: SnackPosition.TOP, backgroundColor: AppColors().otherText);
    }

    return result.data!["accountRegister"]["user"]["id"];
  }
*/
}
