import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/common_button.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign_up/phone_field.dart';
import 'package:appointment_app/features/authentification/widgets/email_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FillProfileScreen extends StatelessWidget {
  const FillProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController bitrthdayController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(1900),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "fill_profile_title".tr(),
                  style: AppStyles.authentificationTitle(context),
                ),
                SizedBox(height: 15),
                Text(
                  "fill_profile_desc".tr(),
                  style: AppStyles.authentificationdescription(context),
                ),
                SizedBox(height: 20),
                // Stack(
                //   children: [
                //     Container(
                //       width: 120,
                //       height: 120,
                //       decoration: BoxDecoration(
                //         color: Color(0xFFDDDDDD),
                //         borderRadius: BorderRadius.circular(120),
                //       ),
                //       child: Padding(
                //         padding: EdgeInsetsGeometry.only(right: 30),
                //         child: Icon(
                //           Icons.person,
                //           color: Colors.white,
                //           size: 150,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Center(
                  child: InkWell(
                    child: Image.asset("assets/images/profile_picture.png"),
                  ),
                ),
                SizedBox(height: 25),
                TextFormField(
                  controller: fullNameController,
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
                    hintText: "full_name".tr(),
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
                SizedBox(height: 15),
                EmailField(emailController: emailController),
                SizedBox(height: 15),
                TextFormField(
                  controller: bitrthdayController,
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
                    hintText: "birthday".tr(),
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
                SizedBox(height: 15),
                PhoneField(phoneController: phoneController),
                SizedBox(height: 70),
                Button(text: "submit", function: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
