import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/features/authentification/widgets/methods-signin-and-privacy.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign%20in/signin-screen.dart';
import 'package:appointment_app/features/authentification/sign%20up/phone-field.dart';
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
                Text("Create Account", style: AppStyles.authentificationTitle),
                SizedBox(height: 15),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: AppStyles.authentificationdescription,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 20,
                    ),
                    hintText: 'Email',
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
                    hintText: 'Password',
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
                          horizontal: MediaQuery.of(context).size.width * 0.2,
                          vertical: 15,
                        ),
                        child: Text("Create Account", style: AppStyles.button),
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
                    Text("You don't have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                      child: Text('Sign In', style: AppStyles.textButton),
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
