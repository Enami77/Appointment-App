import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/features/authentification/widgets/methods-signin-and-privacy.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign%20up/signup-screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "signin_title".tr(),
                    style: AppStyles.authentificationTitle,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "signin_desc".tr(),
                    style: AppStyles.authentificationdescription,
                  ),
                  SizedBox(height: 30),
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(value: false, onChanged: (bool) {}),
                            Text(
                              "remember_me".tr(),
                              style: AppStyles.hintStyle,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "forgot_password".tr(),
                          style: AppStyles.textButton,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      color: AppColors.primary,
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.245,
                          vertical: 15,
                        ),
                        child: Text("login".tr(), style: AppStyles.button),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),

                  SignInWith(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("no_account".tr()),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'sign_up'.tr(),
                          style: AppStyles.textButton,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
