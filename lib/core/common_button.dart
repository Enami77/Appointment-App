import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback function;

  const Button({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          color: AppColors.primary,
          onPressed: function,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
            child: Text(text.tr(), style: AppStyles.button(context)),
          ),
        ),
      ),
    );
  }
}
