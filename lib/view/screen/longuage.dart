import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/routes.dart';
import 'package:ecommerce_app/core/localization/changelocal.dart';
import 'package:ecommerce_app/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLanguePage extends GetView<LocaleController> {
  const MyLanguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "1".tr,
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: ColorManager.kprimaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.headline1,
          ),
          CustomButtonLangue(
            text: '1.1'.tr,
            onPressed: () {
              controller.changeLang("ar");
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
          CustomButtonLangue(
            text: '1.2'.tr,
            onPressed: () {
              controller.changeLang("en");
              Get.toNamed(AppRoutes.onBoarding);
            },
          ),
        ],
      ),
    );
  }
}
