import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderField),
      ),
      child: Row(
        children: [
          CountryCodePicker(
            initialSelection: 'DZ',
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            showDropDownButton: false,
            hideMainText: true,
            showFlag: true,
            favorite: const ['GB', 'DZ'],
            alignLeft: false,
            padding: EdgeInsets.zero,
            textStyle: const TextStyle(fontSize: 16),
            onChanged: (country) {},
          ),
          Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),

          Container(width: 1, height: 35, color: Colors.grey.shade300),

          const SizedBox(width: 16),

          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "phone_number".tr(),
                hintStyle: AppStyles.hintStyle,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
