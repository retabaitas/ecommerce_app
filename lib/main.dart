import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: AppSize.s24,
              fontWeight: FontWeight.bold,
              color: ColorManager.kblackColor,
              fontFamily: 'PlayfairDisplay-Bold'),
          bodyText1: TextStyle(
              fontSize: AppSize.s18,
              height: AppSize.s1_5,
              color: ColorManager.kgreyColor,
              fontFamily: 'PlayfairDisplay-SemiBold'),
        ),
      ),
      title: 'Ecommerce App',
      // ignore: prefer_const_constructors
      home: OnBoarding(),
      routes: route,
    );
  }
}
