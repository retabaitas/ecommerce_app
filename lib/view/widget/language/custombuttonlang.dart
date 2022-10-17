import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:flutter/material.dart';

class CustomButtonLangue extends StatelessWidget {
  const CustomButtonLangue({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        color: ColorManager.kprimaryColor,
        textColor: ColorManager.kwhiteColor,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSize.s18,
          ),
        ),
      ),
    );
  }
}
