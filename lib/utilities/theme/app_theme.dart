import 'package:ecommerce_app/utilities/colors/app_colors.dart';
import 'package:flutter/material.dart';


  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.backGroundColor,
    hintColor: AppColors.greyColor,
    appBarTheme: AppBarTheme(color: AppColors.backGroundColor),
    cardColor: AppColors.whiteColor,

    // Define additional light theme properties here
  );

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.blackColor,
    hintColor: AppColors.greyColor,
    appBarTheme: AppBarTheme(color: AppColors.blackColor),
    cardColor: AppColors.greyColor
    // Define additional dark theme properties here
  );

