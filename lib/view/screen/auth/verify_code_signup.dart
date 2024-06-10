


import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import 'package:untitled/view/widget/auth/customTextBodyAuth.dart';

import '../../../controller/Auth/verify_code_signup_Controller.dart';
import '../../widget/auth/customTextTitleAuth.dart';



class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " Verification Code",
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
                title: ' Check Code',
              ),
            ),
            CustomTextBodyAuth(description: 'Enter the code sent to your E-mail',

            ),
            const SizedBox(
              height: 5,
            ),
            OtpTextField(
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                controller.gotoLogin();
              }, // end onSubmit
            ),

          ],
        ),
      ),
    );
  }
}
