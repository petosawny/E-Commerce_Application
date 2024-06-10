import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';

import '../../view/screen/auth/verify_code_signup.dart';

abstract class SignupController extends GetxController {
  signup();

  gotoLogin();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController userName;

  late TextEditingController email;

  late TextEditingController phoneNum;

  late TextEditingController password;

  @override
  signup() {
    if (formState.currentState!.validate()) {
      Get.off(VerifyCodeSignUp());
    } else {
      return "NOt Valid ";
    }
  }

  @override
  gotoLogin() {
    Get.off(LoginPage());
  }

  @override
  void onInit() {
    email = TextEditingController();
    userName = TextEditingController();
    phoneNum = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phoneNum.dispose();
    userName.dispose();

    super.dispose();
  }
}
