import 'package:ecommerce_app/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1'.tr),
          CustomButtonLangue(
            text: 'ar',
            onPressed: () {},
          ),
          CustomButtonLangue(
            text: 'en',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
