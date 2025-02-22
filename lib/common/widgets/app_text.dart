// lib/core/widgets/custom_text.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/core/configs/theme/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? color;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.color,
  });

  // Custom text styles
  static TextStyle titleLarge(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textDarkColor,
    );
  }

  static TextStyle titleMedium(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      //color: AppColors.colorFoundationGreyNormal,
    );
  }

  static TextStyle titleSmall(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textDarkColor,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textDarkColor,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.textDarkColor,
    );
  }
   static TextStyle bodyThin(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 12,
      fontWeight: FontWeight.w200,
      color: AppColors.textDarkColor,
    );
  }
   static TextStyle titleLanding(BuildContext context) {
    return GoogleFonts.leagueSpartan(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: AppColors.textDarkColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(color: color) ?? TextStyle(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}