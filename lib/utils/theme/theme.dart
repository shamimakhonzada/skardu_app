import 'package:flutter/material.dart';
import 'package:skardu_app/utils/constants/color.dart';
import 'package:skardu_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:skardu_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:skardu_app/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/text_field_theme.dart';

class SkdAppTheme {
  SkdAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: SkdColors.primary,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: SkdAppBarTheme.lightAppBarTheme,
      textTheme: SkdTextTheme.lightTextTheme,
      chipTheme: SkdChipTheme.lightChipTheme,
      bottomSheetTheme: SkdBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: SkdElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: SkdOutLinedButtonTheme.lightOutlineButtonTheme,
      checkboxTheme: SkdCheckBoxTheme.lightCheckBoxTheme,
      // textButtonTheme: SkdTextButtonTheme.lightTextButtonTheme,
      inputDecorationTheme: SkdInputDecorationTheme.lightTextFieldTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: SkdColors.primary,
      scaffoldBackgroundColor: Colors.black,
      textTheme: SkdTextTheme.darkTextTheme,
      appBarTheme: SkdAppBarTheme.darkAppBarTheme,
      chipTheme: SkdChipTheme.darkChipTheme,
      // textButtonTheme: SkdTextButtonTheme.darkTextButtonTheme,
      checkboxTheme: SkdCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: SkdBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: SkdElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: SkdOutLinedButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: SkdInputDecorationTheme.darkTextFieldTheme);
}
