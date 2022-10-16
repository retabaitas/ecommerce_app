import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageView extends GetView<onBoardingControllerImp> {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBordingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            onBordingList[index].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: AppSize.s40,
          ),
          Image.asset(
            onBordingList[index].image!,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: AppSize.s20),
          Text(
            onBordingList[index].body!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
