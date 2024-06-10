


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/App_routes.dart';

import '../../view/screen/auth/Forget_Password/ResetPassword.dart';

abstract class VerifyCodeForgetPassController extends GetxController{
  checkCode();


  gotoResetPassword() ;
}


class VerifyCodeForgetPassControllerImp extends VerifyCodeForgetPassController{

  late String verificationCode ;

  @override
  checkCode() {

  }


  @override
  gotoResetPassword() {
// goto reset password page
  Get.to(ResetPassword()) ;
  }

  @override
  void onInit() {
    super.onInit();
  }



}