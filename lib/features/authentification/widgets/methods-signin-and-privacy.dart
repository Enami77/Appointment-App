import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:flutter/material.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.27,
              height: 1,
              color: AppColors.borderField,
            ),
            Text("  Or sign in with  ", style: AppStyles.hintStyle),
            Container(
              width: MediaQuery.of(context).size.width * 0.27,
              height: 1,
              color: AppColors.borderField,
            ),
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
            Text('By logging, you agree to our ', style: AppStyles.hintStyle),
            InkWell(
              onTap: () {},
              child: Text(
                "Terms & conditions ",
                style: AppStyles.textButtonBlack,
              ),
            ),
            Text('and ', style: AppStyles.hintStyle),
            InkWell(
              onTap: () {},
              child: Text("privacyPolicy.", style: AppStyles.textButtonBlack),
            ),
          ],
        ),
      ],
    );
  }
}
