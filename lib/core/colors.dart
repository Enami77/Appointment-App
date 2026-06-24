import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const background = Color(0xFFFFFFFF);
  static const primary = Color(0xFF2D81FF);
  static const secondary = Color(0xFF757575);
  static const borderField = Color.fromARGB(255, 237, 236, 236);
  static const darkBackground = Color(0xFF121212);
  static const darkSecondary = Color(0xFFBDBDBD);
  static const surface = Colors.white;
  static const darkSurface = Color(0xFF1E1E1E);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: GoogleFonts.interTextTheme(),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: GoogleFonts.interTextTheme(),
  );
}
