import 'package:appointment_app/core/colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const logoSplashscreen = TextStyle(
    fontSize: 49,
    fontWeight: FontWeight.bold,
  );
  static const logoOnboardingscreen = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const authentificationTitle = TextStyle(
    color: AppColors.primary,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );
  static final authentificationdescription = TextStyle(
    color: AppColors.secondary,
    fontSize: 15,
    letterSpacing: 0.3,
    height: 1.8,
  );
  static const hintStyle = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 183, 182, 182),
  );
  static const textButton = TextStyle(fontSize: 14, color: AppColors.primary);
  static const textButtonBlack = TextStyle(fontSize: 14, color: Colors.black);
  static const button = TextStyle(fontSize: 20, color: Colors.white);
  static const onBoardingTitle = TextStyle(
    color: Color(0xFF247CFF),
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const onBoardingdesc = TextStyle(
    color: Color(0xFF757575),
    fontSize: 13,
  );
}
