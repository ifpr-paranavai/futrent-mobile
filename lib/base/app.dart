import 'package:flutter/material.dart';
import 'package:futrent_mobile/base/general_bindings.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/theme/app_theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: Scaffold(
          backgroundColor: lightGreen,
          body: Center(child: CircularProgressIndicator(color: white))),
    );
  }
}
