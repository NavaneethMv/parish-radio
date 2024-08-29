import 'package:flutter/material.dart';
import 'color_select.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
      backgroundColor: ColorSelect.primaryColor,
      shadowColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: false,
      actionsIconTheme: IconThemeData(color: Colors.black, size: 16.0)),
  drawerTheme: const DrawerThemeData(
    backgroundColor: ColorSelect.drawerLight,
  ),
  primaryColor: ColorSelect.primaryColor,
  scaffoldBackgroundColor: ColorSelect.primaryColor,
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontSize: 95,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 20,
      color: Colors.black,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 15,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 13,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
  listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
      backgroundColor: ColorSelect.primaryColorDark,
      shadowColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: false,
      scrolledUnderElevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 16.0)),
  drawerTheme: const DrawerThemeData(
    backgroundColor: ColorSelect.drawerDark,
  ),
  scaffoldBackgroundColor: ColorSelect.primaryColorDark,
  primaryColor: ColorSelect.primaryColorDark,
  textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: 95,
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 20,
        color: Colors.white,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: 15,
        color: Colors.white,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 13,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      )),
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
  listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
);
