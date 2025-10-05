import 'package:flutter/material.dart';
import 'package:core_components/core_components.dart';
import 'package:meal_explorer/welcome_page.dart';

void main() {
  runApp(const MealExplorerApp());
}

class MealExplorerApp extends StatelessWidget {
  const MealExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppTypography.fontFamilyBody,
        scaffoldBackgroundColor: AppColors.neutralBackground,
        textTheme: TextTheme(
          bodyMedium: AppTypography.fontBodyMD,
          titleLarge: AppTypography.fontHeadingLG,
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
