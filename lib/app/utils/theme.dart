import 'package:flutter/material.dart';
import 'color_select.dart'; // Make sure to import the ColorSelect class

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: ColorSelect.primaryColor,
  scaffoldBackgroundColor: ColorSelect.primaryColor,
  colorScheme: const ColorScheme.light(
    primary: ColorSelect.primaryColor,
    secondary: ColorSelect.secondaryColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: ColorSelect.primaryColorDark),
    headlineMedium: TextStyle(color: ColorSelect.primaryColorDark, fontSize: 48),
  ),
  iconTheme: const IconThemeData(color: ColorSelect.primaryColorDark),
  buttonTheme: const ButtonThemeData(buttonColor: ColorSelect.secondaryColor),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: ColorSelect.primaryColorDark,
  scaffoldBackgroundColor: ColorSelect.primaryColorDark,
  colorScheme: const ColorScheme.dark(
    primary: ColorSelect.primaryColorDark,
    secondary: ColorSelect.secondaryColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: ColorSelect.primaryColor),
    headlineMedium: TextStyle(color: ColorSelect.primaryColor, fontSize: 48),
  ),
  iconTheme: const IconThemeData(color: ColorSelect.primaryColor),
  buttonTheme: const ButtonThemeData(buttonColor: ColorSelect.secondaryColor),
);
