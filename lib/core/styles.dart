import 'package:appointment_app/core/colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle logoSplashscreen(BuildContext context) {
    return TextStyle(
      fontSize: 49,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
    );
  }

  static TextStyle logoOnboardingscreen(BuildContext context) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
    );
  }

  static TextStyle titles(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
    );
  }

  static TextStyle authentificationTitle(BuildContext context) {
    return const TextStyle(
      color: AppColors.primary,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle authentificationdescription(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkSecondary
          : AppColors.secondary,
      fontSize: 15,
      letterSpacing: 0.3,
      height: 1.8,
    );
  }

  static TextStyle hintStyle(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.grey.shade500
          : const Color.fromARGB(255, 183, 182, 182),
    );
  }

  static TextStyle textButton(BuildContext context) {
    return const TextStyle(fontSize: 15, color: AppColors.primary);
  }

  static TextStyle textButtonBlack(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  static TextStyle button(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle onBoardingTitle(BuildContext context) {
    return const TextStyle(
      color: AppColors.primary,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle onBoardingdesc(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkSecondary
          : AppColors.secondary,
      fontSize: 13,
    );
  }
}
