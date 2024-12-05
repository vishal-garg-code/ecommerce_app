import 'package:ecommerce_app/ui/login/login_page.dart';
import 'package:ecommerce_app/utilities/strings/app_strings.dart';
import 'package:ecommerce_app/utilities/widgets/buttons/app_buttons.dart';
import 'package:ecommerce_app/utilities/widgets/text_fields/app_textfields.dart';
import 'package:ecommerce_app/utilities/widgets/texts/app_texts.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isPasswordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: AppTexts.headerText(context, AppStrings.sign_up_text),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextfields.elevatedTextField(context, nameController,
                  TextInputType.text, AppStrings.name_text),
              SizedBox(height: 10,),
              AppTextfields.elevatedTextField(context, emailController,
                  TextInputType.emailAddress, AppStrings.email_text),
              SizedBox(height: 10,),
              
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
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                    child:
                    AppTexts.smallerText(context, AppStrings.already_have_an_account_text),
                  ),
                  Image.asset(AppStrings.right_arrow_orange,scale: 3,)
                ],
              ),
              SizedBox(height: 50,),
              AppButtons.elevatedOrangeButton(context, (){}, AppStrings.sign_up_text),
              SizedBox(height: 80,),
              AppTexts.smallerText(context, AppStrings.or_sign_up_with_social_account_text),
              SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppButtons.socialLoginButton(context, AppStrings.google_image_path, (){}),
                  SizedBox(width: 20,),
                  AppButtons.socialLoginButton(context, AppStrings.facebook_image_path, (){}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
