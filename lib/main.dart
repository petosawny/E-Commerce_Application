import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/localization/translation.dart';
import 'package:untitled/core/services/survices.dart';
import 'package:untitled/routes.dart';

import 'core/localization/ChangeLocal.dart';
import 'view/screen/onBoarding.dart';

void main()async {
  // WidgetsFlutterBinding.ensureInitialized() ;
  // await MyServices().initialServices() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // LocalController controller= Get.put(LocalController()) ;
    return GetMaterialApp(
      // translations: MyTranslation(),
      // locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
textTheme: const TextTheme(
  // title of the OnBoarding Pages
  displayLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
  // Body of the OnBoarding Pages
  bodyLarge: TextStyle(
    height: 1.5,
    fontSize: 17,
    color: Colors.black54,
  ),
)
      ),
      home: OnBoarding(),
      routes: routes,
    );
  }
}

