// ignore_for_file: file_names

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_app/view/widget/onboarding/customdotcontroller.dart';
import 'package:ecommerce_app/view/widget/onboarding/customlistview.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kwhiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.kwhiteColor,
        elevation: AppSize.s0,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 7,
            child: CustomListView(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const CustomDotController(),
                const SizedBox(
                  height: AppSize.s20,
                ),
                CustomBottun(
                  text: 'Contuner',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
