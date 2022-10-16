import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: onBordingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Text(
              onBordingList[index].title!,
              style: const TextStyle(
                fontSize: AppSize.s18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: AppSize.s60,
            ),
            Image.asset(
              onBordingList[index].image!,
              fit: BoxFit.fill,
              width: 350,
              height: 320,
            ),
            const SizedBox(height: AppSize.s20),
            Text(
              onBordingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: AppSize.s18,
                height: AppSize.s1_5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
