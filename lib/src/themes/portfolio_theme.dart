// lib/src/theme/portfolio_theme.dart
import 'package:flutter/material.dart';

class PortfolioTheme {
  static ThemeData get lightTheme {
    // Define light theme colors
    Color primaryColor = Colors.blueGrey[900] as Color;
    Color accentColor = Colors.amberAccent[400] as Color;
    Color backgroundColor = Colors.grey[200] as Color;

    // Define the text theme
    TextTheme textTheme = TextTheme(
      displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: primaryColor),
      displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: primaryColor),
      bodyLarge: TextStyle(fontSize: 16.0, color: primaryColor),
      labelLarge: TextStyle(fontSize: 18.0, color: Colors.white),
    );

    // Define the input decoration theme
    InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: accentColor),
      ),
    );

    // Define the button theme
    ButtonThemeData buttonTheme = ButtonThemeData(
      buttonColor: accentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textTheme: ButtonTextTheme.primary,
    );

    // Define the floating action button theme
    FloatingActionButtonThemeData fabTheme = FloatingActionButtonThemeData(
      backgroundColor: accentColor,
    );

    return ThemeData(
      primaryColor: primaryColor,
      hintColor: accentColor,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: textTheme,
      inputDecorationTheme: inputDecorationTheme,
      buttonTheme: buttonTheme,
      floatingActionButtonTheme: fabTheme,
      //visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme(background: backgroundColor),
    );
  }
}