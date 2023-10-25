import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_news/theme/colors.dart';

class AppTheme {
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;

  static const fontSizeXXS = 10.0;
  static const fontSizeXS = 12.0;
  static const fontSizeS = 14.0;
  static const fontSizeM = 16.0;
  static const fontSizeL = 18.0;
  static const fontSizeXL = 20.0;
  static const fontSizeXXL = 28.0;

  static final TextTheme _textTheme = TextTheme(
    bodyLarge: GoogleFonts.poppins(
        fontSize: fontSizeM, fontWeight: medium, color: AppColors.kBlackBy),
    bodyMedium: GoogleFonts.poppins(
        fontSize: fontSizeS, fontWeight: medium, color: AppColors.kBlackBy),
    bodySmall: GoogleFonts.poppins(
        fontSize: fontSizeXS, fontWeight: medium, color: AppColors.kBlackBy),
    displayLarge: GoogleFonts.poppins(
        fontSize: fontSizeXXL, fontWeight: bold, color: AppColors.kBlackBy),
    displayMedium: GoogleFonts.poppins(
        fontSize: fontSizeXL, fontWeight: bold, color: AppColors.kBlackBy),
    displaySmall: GoogleFonts.poppins(
        fontSize: fontSizeL, fontWeight: bold, color: AppColors.kBlackBy),
  );

  static ThemeData themeData() {
    return ThemeData(textTheme: _textTheme);
  }
}
