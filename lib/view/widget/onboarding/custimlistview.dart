import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CustimListView extends StatelessWidget {
  const CustimListView({super.key});

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
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              onBordingList[index].image!,
              fit: BoxFit.fill,
              width: 350,
              height: 320,
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
