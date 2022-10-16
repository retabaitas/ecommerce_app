// ignore_for_file: file_names

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/onboarding/custimbuttom.dart';
import 'package:ecommerce_app/view/widget/onboarding/custimcontroller.dart';
import 'package:ecommerce_app/view/widget/onboarding/custimlistview.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kwhiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.kwhiteColor,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 7,
            child: CustimListView(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const CustimController(),
                const SizedBox(
                  height: 20,
                ),
                CustimBottum(
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
