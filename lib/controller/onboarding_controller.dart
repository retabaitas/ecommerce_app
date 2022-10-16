// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

abstract class onBoardingController extends GetxController {
  nex();
  onPageChanged(int index);
}

class onBoardingControllerImp extends onBoardingController {
  late PageController pageController;
  int curentPage = 0;
  @override
  nex() {
    curentPage++;
    if (curentPage > onBordingList.length - 1) {
      //Navigator.popAndPushNamed(context, Login());
    } else {
      pageController.animateToPage(
        curentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  onPageChanged(int index) {
    curentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();

    pageController = PageController();
  }
}
