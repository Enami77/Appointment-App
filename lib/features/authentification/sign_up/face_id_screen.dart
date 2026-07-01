import 'package:appointment_app/core/assets_manager.dart';
import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/common_button.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FaceIdScreen extends StatelessWidget {
  const FaceIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "face_id_title".tr(),
                  style: AppStyles.authentificationTitle(context),
                ),
                SizedBox(height: 15),
                Text(
                  "face_id_desc".tr(),
                  style: AppStyles.authentificationdescription(context),
                ),
                SizedBox(height: 90),
                Center(
                  child: Container(
                    width: 240,
                    height: 240,
                    decoration: BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: BorderRadius.circular(240),
                    ),
                    child: Center(child: Image.asset(AssetsManager.faceId)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                Button(text: "Submit", function: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
