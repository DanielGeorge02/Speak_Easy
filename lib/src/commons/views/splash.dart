import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/commons/views/landing_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_riverpod_base/src/feature/home/view/home.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  static const routePath = "/splash";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      context.go(LandingPage.routePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SvgPicture.asset("assets/images/SpeakEasy.in.svg"),
      backgroundColor: Colors.white,
      nextScreen: const LandingPage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
