import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/button_language.dart';
import 'package:appointment_app/core/theme_manager.dart';
import 'package:appointment_app/features/authentification/sign%20_in/signin_provider.dart';
import 'package:appointment_app/features/authentification/widgets/email_field.dart';
import 'package:appointment_app/features/authentification/widgets/methods_signin_and_privacy.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign_up/signup_screen.dart';
import 'package:appointment_app/features/authentification/widgets/password_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInProvider(),

      child: SignInBody(
        emailController: emailController,
        passwordController: passwordController,
      ),
    );
  }
}

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "signin_title".tr(),
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
                    "signin_desc".tr(),
                    style: AppStyles.authentificationdescription(context),
                  ),
                  SizedBox(height: 30),
                  EmailField(emailController: emailController),
                  SizedBox(height: 15),
                  PasswordField(passwordController: passwordController),
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
                              style: AppStyles.hintStyle(context),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "forgot_password".tr(),
                          style: AppStyles.textButton(context),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Consumer<SignInProvider>(
                    builder: (context, provider, child) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: MaterialButton(
                          color: AppColors.primary,
                          onPressed: provider.isLoading
                              ? null
                              : () async {
                                  await provider.login(
                                    emailController.text,
                                    passwordController.text,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(provider.message!)),
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
                                        0.245,
                                    vertical: 15,
                                  ),
                                  child: Text(
                                    "login".tr(),
                                    style: AppStyles.button(context),
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
                        "no_account".tr(),
                        style: AppStyles.hintStyle(context),
                      ),
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
