import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/controllers/radio_controller.dart';
import 'package:radio/app/controllers/theme_controller.dart';
import 'package:radio/routes.dart';

void main() {
  Get.put(RadioController());
  Get.put(ThemeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: 'Radio For You',
        theme: themeController.currentLightTheme,
        darkTheme: themeController.currentDarkTheme,
        themeMode: themeController.themeMode.value,
        initialRoute: AppRoutes.HOME,
        getPages: AppRoutes.routes,
      );
    });
  }
}
