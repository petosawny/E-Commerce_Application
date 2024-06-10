import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/OnBoarding_controller.dart';
import 'package:untitled/view/widget/OnBoarding/CustomButton.dart';
import 'package:untitled/view/widget/OnBoarding/CustomSlider.dart';
import 'package:untitled/view/widget/OnBoarding/DotsController.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement()) ;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: CustomSliderOnBoardimg(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotsControllerOnBoarding(),
                  Spacer(flex: 2,),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
