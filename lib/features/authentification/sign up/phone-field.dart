import 'package:appointment_app/core/colors.dart';
import 'package:appointment_app/core/styles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.darkSurface
            : Colors.white,
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
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : AppColors.darkSurface,
          ),

          Container(
            width: 1,
            height: 35,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.darkSurface
                : Colors.white,
          ),

          const SizedBox(width: 16),

          Expanded(
            child: TextField(
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ],
              decoration: InputDecoration(
                hintText: "phone_number".tr(),
                hintStyle: AppStyles.hintStyle(context),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
