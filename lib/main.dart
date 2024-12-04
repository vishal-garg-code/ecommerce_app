import 'package:ecommerce_app/ui/splash/splash_page.dart';
import 'package:ecommerce_app/utilities/colors/app_colors.dart';
import 'package:ecommerce_app/utilities/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: SplashPage(),
    );
  }
}

