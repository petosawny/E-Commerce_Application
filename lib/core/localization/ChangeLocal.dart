// import 'dart:ui';
//
// import 'package:get/get.dart';
// import 'package:untitled/core/services/survices.dart';
//
// class LocalController extends GetxController {
//   Locale? language;
//
//   MyServices myServices = Get.find();
//
//   ChangeLang(String langCode) {
//     Locale locale = Locale(langCode);
//     myServices.sharedPreferences.setString("Lang", langCode);
//     Get.updateLocale(locale);
//   }
//
//   @override
//   void onInit() {
//     String? sharedPrefLang = MyServices().sharedPreferences.getString("Lang");
//     if (sharedPrefLang == "ar") {
//       language = Locale("ar");
//     } else if (sharedPrefLang == "en") {
//       language = Locale("en");
//     } else {
//       language = Locale(Get.deviceLocale!.languageCode);
//     }
//
//     super.onInit();
//   }
// }
