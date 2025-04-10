import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:skardu_app/check_screen.dart';
import 'package:skardu_app/features/authentication/screens/login/login.dart';
import 'package:skardu_app/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Skardu",
      themeMode: ThemeMode.system,
      theme: SkdAppTheme.lightTheme,
      darkTheme: SkdAppTheme.darkTheme,
      // home: OnBoardingScreen(),
      home: OnBoardingScreen(),
    );
  }
}
