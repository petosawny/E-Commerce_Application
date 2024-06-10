


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/App_routes.dart';
import 'package:untitled/view/screen/auth/Forget_Password/succes_reset_password.dart';

abstract class ResetPasswordController extends GetxController{
  ResetingPassword();

  gotoSuccessResetPassword() ;
}


class ResetPasswordControllerImp extends ResetPasswordController{

  late TextEditingController password ;
  late TextEditingController repassword ;

  @override
  ResetingPassword() {

  }




  @override
  gotoSuccessResetPassword() {
    Get.off(SuccessResetPassword());
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose() ;
    repassword.dispose() ;

    super.dispose();
  }



}