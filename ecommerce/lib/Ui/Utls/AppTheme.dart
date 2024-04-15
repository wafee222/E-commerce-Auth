import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      primaryColor: Color(0xFF004182),
      scaffoldBackgroundColor: Color(0xFF004182),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 18 / 24,
          letterSpacing: -0.16500000655651093,
          color: Colors.white,
          textBaseline: TextBaseline.alphabetic,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 22,
          fontWeight: FontWeight.w500,
          height: 18 / 18,
          letterSpacing: -0.16500000655651093,
          color: Colors.white,
          textBaseline: TextBaseline.alphabetic,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          height: 18 / 18,
          letterSpacing: -0.16500000655651093,
          color: Colors.white,
          textBaseline: TextBaseline.alphabetic,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Color(0xFF004182), backgroundColor: Colors.white, // Set login button text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
