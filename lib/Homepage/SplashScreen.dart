import 'package:animated_splash_screen/animated_splash_screen.dart';
import "package:flutter/material.dart";
import 'package:groceries/Homepage/HomePage.dart';
import 'package:groceries/constants.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/logo.png",
        height: 60.h,
        width: 30.w,
      ),
      nextScreen: HomePage(),
      backgroundColor: secondaryColor,
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
