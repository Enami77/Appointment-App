import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/button_language.dart';
import 'package:appointment_app/core/theme_manager.dart';
import 'package:appointment_app/features/authentification/models/register_model.dart';
import 'package:appointment_app/features/authentification/sign_up/fill_profile_screen.dart';
import 'package:appointment_app/features/authentification/sign_up/signup_provider.dart';
import 'package:appointment_app/features/authentification/widgets/email_field.dart';
import 'package:appointment_app/features/authentification/widgets/methods_signin_and_privacy.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign%20_in/signin_screen.dart';
import 'package:appointment_app/features/authentification/sign_up/phone_field.dart';
import 'package:appointment_app/features/authentification/widgets/password_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "signup_title".tr(),
                        style: AppStyles.authentificationTitle(context),
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

                  SizedBox(height: 15),
                  Text(
                    "signup_desc".tr(),
                    style: AppStyles.authentificationdescription(context),
                  ),
                  SizedBox(height: 20),
                  EmailField(emailController: emailController),
                  SizedBox(height: 15),
                  PasswordField(passwordController: passwordController),
                  SizedBox(height: 15),

                  PhoneField(phoneController: phoneController),
                  SizedBox(height: 30),
                  Consumer<SignUpProvider>(
                    builder: (context, provider, child) {
                      return Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: MaterialButton(
                            color: AppColors.primary,
                            onPressed: provider.isLoading
                                ? null
                                : () async {
                                    // await provider.register(
                                    //   RegisterRequestModel(
                                    //     name: "noura",
                                    //     email: emailController.text,
                                    //     phone: phoneController.text,
                                    //     gender: "0",
                                    //     password: passwordController.text,
                                    //     passwordConfirmation:
                                    //         passwordController.text,
                                    //   ),
                                    // );

                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //   SnackBar(
                                    //     content: Text(provider.message ?? ""),
                                    //   ),
                                    // );
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FillProfileScreen(),
                                      ),
                                    );
                                  },
                            child: provider.isLoading
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                          0.19,
                                      vertical: 15,
                                    ),
                                    child: Text(
                                      "signup_title".tr(),
                                      style: AppStyles.button(context),
                                    ),
                                  ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 45),

                  SignInWith(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "have_account".tr(),
                        style: AppStyles.hintStyle(context),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'sign_in'.tr(),
                          style: AppStyles.textButton(context),
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
