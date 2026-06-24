import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/features/authentification/widgets/methods-signin-and-privacy.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign%20in/signin-screen.dart';
import 'package:appointment_app/features/authentification/sign%20up/phone-field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "signup_title".tr(),
                  style: AppStyles.authentificationTitle,
                ),
                SizedBox(height: 15),
                Text(
                  "signup_desc".tr(),
                  style: AppStyles.authentificationdescription,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 20,
                    ),
                    hintText: 'email'.tr(),
                    hintStyle: AppStyles.hintStyle,
                    focusColor: AppColors.borderField,
                    fillColor: Color(0xFFFDFDFF),
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
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 20,
                    ),
                    hintText: 'password'.tr(),
                    hintStyle: AppStyles.hintStyle,
                    focusColor: AppColors.borderField,
                    fillColor: Color(0xFFFDFDFF),
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
                SizedBox(height: 15),

                PhoneField(),
                SizedBox(height: 30),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      color: AppColors.primary,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.19,
                          vertical: 15,
                        ),
                        child: Text(
                          "signup_title".tr(),
                          style: AppStyles.button,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45),

                SignInWith(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("have_account".tr()),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                      child: Text('sign_in'.tr(), style: AppStyles.textButton),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
