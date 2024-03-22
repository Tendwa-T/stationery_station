import 'package:flutter/material.dart';
import 'package:stationery_station/utils/theme/custom_themes/appbar_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/bottom_sheet.dart';
import 'package:stationery_station/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/chip_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/text_field_theme.dart';
import 'package:stationery_station/utils/theme/custom_themes/text_theme.dart';

class SsappTheme {
  SsappTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SsappTextTheme.lightTextTheme,
    chipTheme: SsappChipTheme.lightChipTheme,
    appBarTheme: SsappAppBarTheme.lightAppBarTheme,
    checkboxTheme: SsappCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: SsappBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SsappElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SsappOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: SsappTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SsappTextTheme.darkTextTheme,
    chipTheme: SsappChipTheme.darkChipTheme,
    appBarTheme: SsappAppBarTheme.darkAppBarTheme,
    checkboxTheme: SsappCheckboxTheme.darkCheckBoxTheme,
    bottomSheetTheme: SsappBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SsappElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SsappOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SsappTextFormFieldTheme.darkInputDecorationTheme,
  );
}
