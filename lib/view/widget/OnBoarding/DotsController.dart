import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/OnBoarding_controller.dart';
import 'package:untitled/core/constant/Color.dart';
import 'package:untitled/data/data%20source/static/static.dart';

class CustomDotsControllerOnBoarding extends StatelessWidget {
  const CustomDotsControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImplement>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardimgList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 7),
              duration: const Duration(milliseconds: 900),
              width: controller.currentPAge== index ? 20 : 6,
              height: 6,
              decoration: const BoxDecoration(color: AppColor.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
