import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ButtonLanguage extends StatefulWidget {
  const ButtonLanguage({super.key});

  @override
  State<ButtonLanguage> createState() => _ButtonLanguageState();
}

class _ButtonLanguageState extends State<ButtonLanguage> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (context.locale.languageCode == 'ar') {
          context.setLocale(const Locale('en'));
        } else {
          context.setLocale(const Locale('ar'));
        }
      },
      child: Text(context.locale.languageCode == 'ar' ? 'English' : 'العربية'),
    );
  }
}
