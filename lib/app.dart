import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stationery_station/features/authentication/screens/onboarding/onboarding.dart';
import 'package:stationery_station/utils/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SsappTheme.lightTheme,
      darkTheme: SsappTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
