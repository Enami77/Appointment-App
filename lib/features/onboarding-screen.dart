import 'dart:ui';

import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/signin-screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png", height: 38),
                  Text(" Docdoc", style: AppStyles.logoOnboardingscreen),
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
                        child: Image.asset("assets/images/logo-light.png"),
                      ),
                    ),

                    Transform.scale(
                      scale: 2.5,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
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
                              // ignore: deprecated_member_use
                              Colors.white.withOpacity(0.0),
                              Colors.white,
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
                        "Best Doctor \n Appointment App",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF247CFF),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: -20,
                      right: 10,
                      left: 10,
                      child: Container(
                        alignment: AlignmentGeometry.topStart,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25),
                          child: const Text(
                            textAlign: TextAlign.center,
                            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 13,
                            ),
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
                      MaterialPageRoute(builder: (context) => SingInScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
