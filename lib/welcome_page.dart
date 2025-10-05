import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';
import 'package:meal_explorer/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color gradientStart = Color(0xFFFF595B);
    const Color gradientEnd = Color(0xFFFFDD92);

    const Alignment customBegin = Alignment(-0.7, -1.0);
    const Alignment customEnd = Alignment(1.0, 0.7);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/splash_background.png'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
          gradient: LinearGradient(
            begin: customBegin,
            end: customEnd,
            colors: const [gradientStart, gradientEnd],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: AppSpacing.paddingAllMd,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/app_logo.png',
                          height: 120,
                          width: 120,
                        ),
                        SizedBox(height: AppSpacing.sm),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: AppSpacing.lg),
                  child: AppButton(
                    text: 'Let\'s start!',
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    fullWidth: true,
                    variant: ButtonVariant.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
