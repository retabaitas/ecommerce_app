import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBordingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(microseconds: 900),
              margin: const EdgeInsets.all(AppSize.s4),
              width: AppSize.s8,
              height: AppSize.s8,
              decoration: const BoxDecoration(
                color: ColorManager.kprimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
