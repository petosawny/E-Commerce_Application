import 'package:flutter/material.dart';
import 'package:untitled/core/constant/App_routes.dart';
import 'package:untitled/view/screen/auth/Login_Page.dart';
import 'view/screen/auth/signUp_Page.dart';
import 'view/screen/onBoarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const LoginPage(),
  AppRoutes.signUp: (context) => const SignUpPage(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
};
