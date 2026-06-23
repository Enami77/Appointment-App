import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
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
                Text("Welcome Back", style: AppStyles.authentificationTitle),
                SizedBox(height: 15),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppStyles.authentificationdescription,
                ),
                SizedBox(height: 30),
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
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Checkbox(value: true, onChanged: (bool) {}),
                          Text("Remember me", style: AppStyles.hintStyle),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password ?",
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
                        horizontal: 135,
                        vertical: 15,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 110,
                      height: 1,
                      color: AppColors.borderField,
                    ),
                    Text("  Or sign in with  ", style: AppStyles.hintStyle),
                    Container(
                      width: 110,
                      height: 1,
                      color: AppColors.borderField,
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
