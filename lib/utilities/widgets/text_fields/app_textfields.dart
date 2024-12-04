import 'package:ecommerce_app/utilities/colors/app_colors.dart';
import 'package:ecommerce_app/utilities/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextfields {

  //Normal textField
  static elevatedTextField(
      BuildContext context,
    TextEditingController controller,
    TextInputType keyBoardType,
    String lable,
  ) {
    bool isDark = Theme.of(context).brightness==Brightness.dark;
    return Card(
      elevation: 0,
      color: Theme.of(context).cardColor,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 5),
        child: TextField(
          controller: controller,
          keyboardType: keyBoardType,
          style: TextStyle(fontSize: 12, height: 2),
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: isDark?AppColors.greyColor: AppColors.whiteColor,
              focusColor: isDark?AppColors.greyColor: AppColors.whiteColor,
              labelText: lable,
              labelStyle: GoogleFonts.metrophobic(
                  textStyle: TextStyle(
                      fontSize: 12,
                      color:isDark?AppColors.whiteColor: AppColors.greyColor,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }


  //Password texField
  static elevatedPasswordField(
      BuildContext context,
    TextEditingController controller,
    bool visibility,
    IconButton suffixIcon,
  ) {
    bool isDark = Theme.of(context).brightness==Brightness.dark;
    return Card(
      elevation: 0,
      color: Theme.of(context).cardColor,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 5),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(fontSize: 12, height: 2),
          obscureText: visibility,
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              filled: true,
              fillColor: isDark?AppColors.greyColor: AppColors.whiteColor,
              focusColor: isDark?AppColors.greyColor: AppColors.whiteColor,
              labelText: AppStrings.password_text,
              suffixIcon: suffixIcon,
              labelStyle: GoogleFonts.metrophobic(
                  textStyle: TextStyle(
                      fontSize: 12,
                      color:isDark?AppColors.whiteColor: AppColors.greyColor,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
