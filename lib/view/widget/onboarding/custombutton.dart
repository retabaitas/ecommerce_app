import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottun extends GetView<onBoardingControllerImp> {
  const CustomBottun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s100,
        vertical: AppSize.s4,
      ),
      decoration: const BoxDecoration(
        color: ColorManager.kprimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s20),
        ),
      ),
      child: MaterialButton(
        textColor: ColorManager.kwhiteColor,
        onPressed: () {
          controller.nex();
        },
        child: const Text(
          'Contuner',
          style: TextStyle(
            fontSize: AppSize.s18,
          ),
        ),
      ),
    );
  }
}
