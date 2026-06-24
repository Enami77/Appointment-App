import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/onboarding-screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _bgOpacity = 0;
  double _frontOpacity = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        _bgOpacity = 1;
      });
    });

    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        _frontOpacity = 1;
      });
    });

    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Center(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 800),
              opacity: _bgOpacity,
              child: Image.asset(
                "assets/images/logo-light.png",
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Color.fromARGB(255, 84, 122, 200),
              ),
            ),
          ),

          Center(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 1200),
              opacity: _frontOpacity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png"),
                  Text(" Docdoc", style: AppStyles.logoSplashscreen(context)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
