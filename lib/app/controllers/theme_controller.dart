import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:radio/app/utils/theme.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.dark.obs;
  bool get isDarkMode => themeMode.value == ThemeMode.dark;

  void toggleTheme() {
    if (isDarkMode) {
      themeMode.value = ThemeMode.light;
    } else {
      themeMode.value = ThemeMode.dark;
    }
    Get.changeThemeMode(themeMode.value);
  }

  ThemeData get currentLightTheme => lightTheme;
  ThemeData get currentDarkTheme => darkTheme;
}
