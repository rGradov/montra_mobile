import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.violet.violet100,
      body: Center(
        child: Lottie.asset("assets/animations/splash.json",package: "splash"),
      ),
    );
  }
}
