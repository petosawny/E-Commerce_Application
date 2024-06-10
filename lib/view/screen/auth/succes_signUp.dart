import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';
import 'package:untitled/view/widget/auth/CustomLoginButton.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          " Success ",
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Success Sign up",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              width: double.infinity,
              child: CustomButtonAuth(
                buttonName: 'Done',
                onPressed: () {
                  Get.off(LoginPage());
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
