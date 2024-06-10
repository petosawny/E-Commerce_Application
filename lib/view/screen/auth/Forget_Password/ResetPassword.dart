

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/Auth/Reset_password_Controller.dart';
import 'package:untitled/view/widget/auth/CustomLoginButton.dart';

import '../../../../core/function/Valid_Input.dart';
import '../../../widget/auth/customTextFormField.dart';
import '../../../widget/auth/customTextTitleAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          " Resst Password",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: const CustomTextTitleAuth(
                title: ' Set your new password',
              ),
            ),

            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(   valid: (val){
              return  ValidInput(val! , 5 , 30 , "password");

            },
              hintText: 'Enter your new password',
              labelText: 'Email;',
              iconData: Icons.password_outlined,
              mycontroller: controller.password,
            ),

            CustomTextFormField(   valid: (val){
              return  ValidInput(val! , 5 , 30 , "password");

            },
              hintText: 're-enter your new password',
              labelText: 'phone;',
              iconData: Icons.password_outlined,
              mycontroller: controller.repassword,
            ),

            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              buttonName: 'Set',onPressed: (){
              controller.gotoSuccessResetPassword();
            },
            ),

          ],
        ),
      ),
    );
  }
}
