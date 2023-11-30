import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared/shared.dart';

const List<String> onboarding = ["hand.json", "money.json", "plan.json"];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  //////////////////////////////////////////////////////////////////////////////

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.light.light100,
      body: SafeArea(
        child: PageView.builder(
          physics: const SwingScrollPhysics(),
          itemBuilder: (ctx, idx) => Center(
            child: LottieBuilder.asset(
              "assets/animations/${onboarding[idx]}",
              package: "onboarding",
            ),
          ),
          itemCount: onboarding.length,
        ),
      ),
    );
  }
}

/// FIXME: create another scroll physics
class SwingScrollPhysics extends ScrollPhysics {
  const SwingScrollPhysics();
}
