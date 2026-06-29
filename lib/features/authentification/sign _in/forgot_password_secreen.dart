import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/common_button.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSecreen extends StatelessWidget {
  ForgotPasswordSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailPhoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "forgot_password_title".tr(),
                    style: AppStyles.authentificationTitle(context),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "forgot_password_desc".tr(),
                    style: AppStyles.authentificationdescription(context),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: emailPhoneController,
                    style: TextStyle(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 20,
                      ),
                      hintText: "email_or_phone".tr(),
                      hintStyle: AppStyles.hintStyle(context),
                      focusColor: AppColors.borderField,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderField),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderField),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderField),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 400),
                  Button(text: "reset_password", function: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
