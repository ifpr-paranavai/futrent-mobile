import 'package:flutter/material.dart';
import 'package:futrent_mobile/pages/onboarding/onboarding_page.dart';
import 'package:futrent_mobile/utils/theme/app_theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
