import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustimController extends StatelessWidget {
  const CustimController({super.key});

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
              margin: const EdgeInsets.all(5),
              width: 6,
              height: 6,
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
