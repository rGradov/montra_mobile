import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';

typedef NavigationCallback = Future<void> Function(BuildContext context);

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.doOnDone});
  final NavigationCallback doOnDone;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(listener);
  }

  void listener() {
    debugPrint(_controller.isCompleted.toString());
    if (_controller.isCompleted) {
      widget.doOnDone(context);
    }
  }

  @override
  void dispose() {
    _controller.removeListener(listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.violet.violet100,
      body: Center(
        child: Lottie.asset("assets/animations/splash.json",
            controller: _controller, onLoaded: _composition, package: "splash"),
      ),
    );
  }

  void _composition(LottieComposition? composition) {
    _controller
      ..duration = composition?.duration
      ..forward();
  }
}
