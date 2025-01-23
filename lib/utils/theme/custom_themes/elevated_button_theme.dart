import 'package:flutter/material.dart';

class SkdElevatedButtonTheme {
  SkdElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      textStyle: TextStyle(
          fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      textStyle: TextStyle(
          fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(color: Colors.blue),
      padding: EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
