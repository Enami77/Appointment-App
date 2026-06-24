import 'dart:ui';

import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/button-language.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/core/theme_manager.dart';
import 'package:appointment_app/features/authentification/sign%20in/signin-screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", height: 38),
                  Text(
                    " Docdoc",
                    style: AppStyles.logoOnboardingscreen(context),
                  ),
                  ButtonLanguage(),
                  IconButton(
                    icon: Icon(
                      themeNotifier.value == ThemeMode.dark
                          ? Icons.light_mode
                          : Icons.dark_mode,
                      color: AppColors.primary,
                    ),
                    onPressed: () {
                      themeNotifier.value =
                          themeNotifier.value == ThemeMode.dark
                          ? ThemeMode.light
                          : ThemeMode.dark;
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 530,

                child: Stack(
                  children: [
                    Center(
                      child: Transform.scale(
                        scale: 1.3,
                        child: Image.asset(
                          "assets/images/logo-light.png",
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Color.fromARGB(255, 84, 122, 200),
                        ),
                      ),
                    ),

                    Transform.scale(
                      scale: 2.5,
                      child: Padding(
                        padding: EdgeInsets.only(right: 57, left: 0),
                        child: Image.asset(
                          "assets/images/doctor.png",
                          height: 500,
                          width: 300,
                        ),
                      ),
                    ),

                    Positioned(
                      right: 10,
                      bottom: 30,
                      left: 10,

                      child: Container(
                        width: 400,
                        height: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor
                              // ignore: deprecated_member_use
                              .withOpacity(0.0),
                              Theme.of(context).scaffoldBackgroundColor,
                            ],
                            stops: [0.0, 0.3],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      right: 20,
                      left: 20,
                      child: Text(
                        "onboarding_title".tr(),
                        textAlign: TextAlign.center,
                        style: AppStyles.onBoardingTitle(context),
                      ),
                    ),

                    Positioned(
                      bottom: -20,
                      right: 10,
                      left: 10,
                      child: Container(
                        alignment: AlignmentGeometry.topStart,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xFF121212)
                            : Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25),
                          child: Text(
                            textAlign: TextAlign.center,
                            "onboarding_desc".tr(),
                            style: AppStyles.onBoardingdesc(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  color: AppColors.primary,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    child: Text(
                      "get_started".tr(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
