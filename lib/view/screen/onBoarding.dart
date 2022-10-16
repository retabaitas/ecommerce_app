// ignore_for_file: file_names

import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customdotcontroller.dart';
import 'package:ecommerce_app/view/widget/onboarding/custompageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp());
    return Scaffold(
      backgroundColor: ColorManager.kwhiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.kwhiteColor,
        elevation: AppSize.s0,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 8,
            child: CustomPageView(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: const [
                CustomDotController(),
                SizedBox(
                  height: AppSize.s20,
                ),
                CustomBottun(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
