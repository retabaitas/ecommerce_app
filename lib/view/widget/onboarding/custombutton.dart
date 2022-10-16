import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomBottun extends StatelessWidget {
  const CustomBottun({super.key, required this.text, required this.onPressed});
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 2,
      ),
      decoration: const BoxDecoration(
        color: ColorManager.kprimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: MaterialButton(
        textColor: ColorManager.kwhiteColor,
        onPressed: onPressed(),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
