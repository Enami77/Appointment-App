import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/common_button.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:appointment_app/features/authentification/sign_up/face_id_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PinInputController();
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
                  "pin_title".tr(),
                  style: AppStyles.authentificationTitle(context),
                ),
                SizedBox(height: 15),
                Text(
                  "pin_desc".tr(),
                  style: AppStyles.authentificationdescription(context),
                ),
                SizedBox(height: 50),
                MaterialPinField(
                  length: 4,
                  pinController: controller,
                  theme: MaterialPinTheme(
                    shape: MaterialPinShape.outlined,
                    cellSize: const Size(75.75, 80),
                    borderRadius: BorderRadius.circular(16),
                    focusedFillColor: Colors.white,
                    completeFillColor: Colors.white,
                    followingFillColor: Colors.white,
                    filledFillColor: Colors.white,
                    focusedBorderColor: AppColors.primary,
                    filledBorderColor: AppColors.primary,
                    borderColor: AppColors.borderField,
                    hintCharacter: "___",
                    fillColor: Colors.white,
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  onChanged: (value) {
                    print(value);
                  },

                  onCompleted: (value) {
                    print("OTP: $value");
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.5),
                Button(
                  text: "Submit",
                  function: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FaceIdScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
