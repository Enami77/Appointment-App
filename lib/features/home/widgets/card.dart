import 'dart:math';

import 'package:appointment_app/core/assets_manager.dart';
import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.93,
          height: 170,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Positioned(
          left: 70,
          top: -333,
          child: Transform.rotate(
            angle: 27.6 * pi / 180,
            child: Container(
              width: 103,
              height: 824,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // ignore: deprecated_member_use
                    Colors.white.withOpacity(0.1),
                    // ignore: deprecated_member_use
                    Colors.white.withOpacity(0.01),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 20,
          child: SizedBox(
            height: 87,
            width: 143,
            child: Text(
              'Book and schedule with nearest doctor',
              style: AppStyles.button(context),
            ),
          ),
        ),
        Positioned(
          top: -100,
          right: -70,
          left: 100,

          child: Image.asset(AssetsManager.doctorCard, height: 330),
        ),
        Positioned(
          top: 118,
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: MaterialButton(
              onPressed: () {},

              color: AppColors.buttonCard,
              child: Text("Find Nearby", style: AppStyles.textButton(context)),
            ),
          ),
        ),
      ],
    );
  }
}
