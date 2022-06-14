import 'dart:async';

import 'package:brave_mind_app/constants/constants.dart';
import 'package:brave_mind_app/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3), () => Get.offNamed(AppRoutes.loginScreen));

    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Brave Mind',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 30),
            Image.asset('assets/images/logos/white-logo-new.png'),
            const SizedBox(height: 30),
            const SizedBox(
              height: 40,
              width: 40,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
