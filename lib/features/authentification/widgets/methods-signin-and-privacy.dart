import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container(height: 1, color: AppColors.borderField)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text("or_sign_in_with".tr(), style: AppStyles.hintStyle),
            ),

            Expanded(child: Container(height: 1, color: AppColors.borderField)),
          ],
        ),

        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.borderField,
                    borderRadius: BorderRadius.circular(46),
                  ),
                  child: Image.asset("assets/images/google.png"),
                ),
              ),
              InkWell(
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.borderField,
                    borderRadius: BorderRadius.circular(46),
                  ),
                  child: Image.asset("assets/images/facebook.png"),
                ),
              ),
              InkWell(
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.borderField,
                    borderRadius: BorderRadius.circular(46),
                  ),
                  child: Image.asset("assets/images/apple.png"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Wrap(
          alignment: WrapAlignment.center,

          children: [
            Text("terms_agreement".tr(), style: AppStyles.hintStyle),
            InkWell(
              onTap: () {},
              child: Text(
                "terms_conditions".tr(),
                style: AppStyles.textButtonBlack,
              ),
            ),
            Text('and'.tr(), style: AppStyles.hintStyle),
            InkWell(
              onTap: () {},
              child: Text(
                "privacy_policy".tr(),
                style: AppStyles.textButtonBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
