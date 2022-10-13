// ignore_for_file: file_names

import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: onBordingList.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(onBordingList[index].title!),
              Image.asset(onBordingList[index].image!),
              Text(onBordingList[index].body!),
            ],
          ),
        ),
      ),
    );
  }
}
