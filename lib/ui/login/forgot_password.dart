import 'package:ecommerce_app/utilities/strings/app_strings.dart';
import 'package:ecommerce_app/utilities/widgets/buttons/app_buttons.dart';
import 'package:ecommerce_app/utilities/widgets/text_fields/app_textfields.dart';
import 'package:ecommerce_app/utilities/widgets/texts/app_texts.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: AppTexts.mediumText(context, AppStrings.forgot_password_text),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextfields.elevatedTextField(context, emailController,
                TextInputType.emailAddress, AppStrings.email_text),
            SizedBox(
              height: 60,
            ),
            AppButtons.elevatedOrangeButton(context, () {}, AppStrings.send_text)
          ],
        ),
      ),
    );
  }
}
