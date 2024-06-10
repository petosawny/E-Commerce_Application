



import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/App_routes.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';

import '../../view/screen/auth/Forget_Password/ResetPassword.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();


  gotoLogin() ;
}


class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verificationCode ;

  @override
  checkCode() {

  }


  @override
  gotoLogin() {
// goto reset password page
    Get.off(LoginPage()) ;
  }

  @override
  void onInit() {
    super.onInit();
  }



}