import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';

import '../../../widget/auth/CustomLoginButton.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          " Success ",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            "Success Resting the password",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              width: double.infinity,
              child: CustomButtonAuth(
                buttonName: 'Done',
                onPressed: () {
                  Get.off(LoginPage()) ;
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
