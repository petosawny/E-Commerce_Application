import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/OnBoarding_controller.dart';
import 'package:untitled/core/constant/Color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImplement> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        textColor: Colors.white,
        color: AppColor.primaryColor,
        onPressed: () {
          controller.next();
        },
        child: const Text("Continue"),
      ),
    );
  }
}
