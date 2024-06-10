import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/OnBoarding_controller.dart';
import 'package:untitled/data/data%20source/static/static.dart';

class CustomSliderOnBoardimg extends GetView<OnBoardingControllerImplement> {
  const CustomSliderOnBoardimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardimgList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onBoardimgList[i].title!,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  onBoardimgList[i].image!,
                  width: 200,
                  height: 230,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Text(
                    onBoardimgList[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ));
  }
}
