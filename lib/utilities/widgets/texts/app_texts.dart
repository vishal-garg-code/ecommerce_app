import 'package:ecommerce_app/utilities/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts {
  static headerText(BuildContext context, String title) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      title,
      style: GoogleFonts.metrophobic(
          textStyle: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: isDark ? AppColors.whiteColor : AppColors.blackColor)),
    );
  }

  static smallerText(BuildContext context, String title) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      title,
      style: GoogleFonts.metrophobic(
          textStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: isDark ? AppColors.whiteColor : AppColors.blackColor)),
    );
  }

  static mediumText(BuildContext context, String title) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      title,
      style: GoogleFonts.metrophobic(
          textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: isDark ? AppColors.whiteColor : AppColors.blackColor)),
    );
  }

  static buttonText(BuildContext context, String title) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      title,
      style: GoogleFonts.metrophobic(
          textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: isDark ? AppColors.blackColor : AppColors.whiteColor)),
    );
  }
}
