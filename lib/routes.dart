import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> route = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onBoarding: (context) => const OnBoarding(),
};
