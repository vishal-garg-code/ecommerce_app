import 'package:ecommerce_app/utilities/colors/app_colors.dart';
import 'package:ecommerce_app/utilities/widgets/texts/app_texts.dart';
import 'package:flutter/material.dart';

class AppButtons{
  static elevatedOrangeButton(BuildContext context,VoidCallback onClick, String text){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.orangeColor,
          fixedSize: Size(MediaQuery.of(context).size.width,45)),
        onPressed:onClick,
        child: AppTexts.buttonText(context, text),

    );


  }

  static socialLoginButton(BuildContext context,String imagePath,VoidCallback onClick){
    bool isDark = Theme.of(context).brightness==Brightness.dark;
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), // Makes the button circular
        padding: EdgeInsets.all(16), // Adjust padding for desired size
        backgroundColor: isDark?AppColors.greyColor:AppColors.whiteColor, // Button background color
        elevation: 5,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath), // Add your Google logo asset here
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }


}