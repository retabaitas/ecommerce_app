// ignore_for_file: file_names

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorManager.kwhiteColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: onBordingList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Text(
                        onBordingList[index].title!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          onBordingList[index].image!,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onBordingList[index].body!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
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
                      onPressed: () {},
                      child: const Text(
                        'Contuner',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
