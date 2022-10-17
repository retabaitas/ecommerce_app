import 'package:ecommerce_app/core/constant/imageassets.dart';
import 'package:ecommerce_app/core/constant/value_manager.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          AppSize.s20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: AppSize.s100,
                height: AppSize.s100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s60),
                ),
                child: Image.asset(
                  ImageAsset.logoimage,
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
            const Text(
              'Login : ',
              style: TextStyle(
                fontSize: AppSize.s20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
