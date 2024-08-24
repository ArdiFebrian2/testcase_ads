import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testcase_ads/app/routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashScreenView extends GetView<SplashscreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), (() {
      Get.offAllNamed(Routes.ONBOARDING);
    }));

    return Scaffold(
      body: Center(
        child: Container(
          width: 102,
          height: 134,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
