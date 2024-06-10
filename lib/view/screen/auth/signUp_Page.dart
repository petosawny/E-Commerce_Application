import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/Auth/signup_controller.dart';
import 'package:untitled/view/widget/auth/CustomLoginButton.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';
import 'package:untitled/view/widget/auth/customTextBodyAuth.dart';

import '../../../core/function/Valid_Input.dart';
import '../../widget/auth/customTextFormField.dart';
import '../../widget/auth/Custom_Signup_Text.dart';
import '../../widget/auth/customTextTitleAuth.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " Sign up",
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
                title: 'Welcom Back',
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const CustomTextBodyAuth(
                  description: 'Enter your email and your password',
                )),
            const SizedBox(
              height: 5,
            ),
            CustomTextFormField(
              valid: (val) {
                return ValidInput(val!, 5, 30, "username");
              },
              hintText: 'Enter your user Name',
              labelText: 'Email;',
              iconData: Icons.person_rounded,
              mycontroller: controller.userName,
            ),
            CustomTextFormField(
              valid: (val) {
                return ValidInput(val!, 5, 30, "email");
              },
              hintText: 'Enter your E-mail',
              labelText: 'Email;',
              iconData: Icons.email_outlined,
              mycontroller: controller.email,
            ),
            CustomTextFormField(
              valid: (val) {
                return ValidInput(val!, 9, 20, "phone");
              },
              keyboardType: TextInputType.number,
              hintText: 'Enter your phone Number',
              labelText: 'phone;',
              iconData: Icons.phone,
              mycontroller: controller.phoneNum,
            ),
            CustomTextFormField(
              valid: (val) {
                return ValidInput(val!, 5, 30, "password");
              },
              hintText: 'Enter your password',
              labelText: 'Password;',
              iconData: Icons.password_outlined,
              mycontroller: controller.password,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              buttonName: 'Sign UP',
              onPressed: () {
                controller.gotoLogin();
              },
            ),
            CustomSignUpOrSignInText(
              textOne: 'already have an account ',
              textTwo: 'Sign In',
              onTap: () {
                Get.off(LoginPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
