import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<onBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBordingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(microseconds: 900),
              margin: const EdgeInsets.all(AppSize.s4),
              width: controller.curentPage == index ? AppSize.s20 : AppSize.s8,
              height: AppSize.s8,
              decoration: BoxDecoration(
                color: controller.curentPage == index
                    ? ColorManager.korangeColor
                    : ColorManager.kprimaryColor,
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
