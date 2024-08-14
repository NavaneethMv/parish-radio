import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio/app/utils/theme.dart';
import 'package:radio/app/views/screens/home_screen.dart';
import 'app/controllers/radio_controller.dart';

void main() {
  Get.put(RadioController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Radio',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        home: HomeScreen());
  }
}
