import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/App_routes.dart';
import 'package:untitled/data/data%20source/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();

  onPageChanged(int index);
}

class OnBoardingControllerImplement extends OnBoardingController {
  @override
  late PageController pageController;

  int currentPAge = 0;

  @override
  next() {
    currentPAge++;
    if (currentPAge > onBoardimgList.length - 1) {
      Get.offAllNamed(AppRoutes.login) ;
    } else {
      pageController.animateToPage(currentPAge,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPAge = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
