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
      body: ListView.builder(
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
              height: 80,
            ),
            Container(
              width: 384,
              height: 384,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                onBordingList[index].image!,
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
    );
  }
}
