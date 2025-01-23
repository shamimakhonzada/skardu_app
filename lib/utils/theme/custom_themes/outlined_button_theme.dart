import 'package:flutter/material.dart';

class SkdOutLinedButtonTheme {
  SkdOutLinedButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0, // No elevation for outlined buttons
      foregroundColor: Colors.black, // Text color for enabled state
      disabledForegroundColor: Colors.grey, // Text color for disabled state
      side: BorderSide(color: Colors.grey, width: 1), // Outline color and width
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ), // Text styling
      padding: EdgeInsets.symmetric(vertical: 18), // Padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14), // Rounded corners
      ),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white, // Text color for enabled state
      disabledForegroundColor: Colors.grey, // Text color for disabled state
      side: BorderSide(color: Colors.white, width: 1), // Outline color and width
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
      padding: EdgeInsets.symmetric(vertical: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );
}
