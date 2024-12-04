import 'package:ecommerce_app/utilities/strings/app_strings.dart';
import 'package:ecommerce_app/utilities/widgets/buttons/app_buttons.dart';
import 'package:ecommerce_app/utilities/widgets/text_fields/app_textfields.dart';
import 'package:ecommerce_app/utilities/widgets/texts/app_texts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: AppTexts.headerText(context, AppStrings.login_text),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextfields.elevatedTextField(context, emailController,
                  TextInputType.emailAddress, AppStrings.email_text),
              SizedBox(
                height: 10,
              ),
              AppTextfields.elevatedPasswordField(
                  context,
                  passwordController,
                  isPasswordNotVisible,
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordNotVisible = !isPasswordNotVisible;
                        });
                      },
                      icon: Icon(isPasswordNotVisible
                          ? Icons.visibility
                          : Icons.visibility_off))),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: AppTexts.smallerText(
                        context, AppStrings.forget_your_password_text),
                  ),
                  Image.asset(
                    "assets/images/img_right_arrow_orange.png",
                    scale: 3,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              AppButtons.elevatedOrangeButton(
                  context, () {}, AppStrings.login_text),

              SizedBox(height: 80,),


              AppTexts.smallerText(
                  context, AppStrings.or_login_with_social_account_text),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButtons.socialLoginButton(
                      context, 'assets/images/img_google.png', () {}),
                  SizedBox(
                    width: 20,
                  ),
                  AppButtons.socialLoginButton(
                      context, 'assets/images/img_facebook.png', () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}