import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:radio/app/controllers/radio_controller.dart';
import 'package:radio/app/controllers/theme_controller.dart';
import 'package:radio/app/views/widgets/svg_icon.dart';
import 'package:radio/routes.dart';

class RadioDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RadioController radioController = Get.find<RadioController>();
    final ThemeController themeController = Get.find<ThemeController>();

    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 100, 0, 20),
            child: ThemedSvgIcon(
              lightIconPath: 'assets/icons/icon_light.svg',
              darkIconPath: 'assets/icons/icon_dark.svg',
              width: 150,
              height: 150,
            ),
          ),
          Obx(() => ListTile(
                leading: const Icon(Ionicons.planet_outline),
                title: Text(
                  "HomePage",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                selected: radioController.selectedIndex.value == 0,
                selectedTileColor:
                    Theme.of(context).primaryColor.withOpacity(1),
                onTap: () {
                  radioController.updateSelectedIndex(0);
                  Get.toNamed(AppRoutes.HOME);
                },
              )),
          const SizedBox(height: 10),
          Obx(() => ListTile(
                leading: const Icon(Ionicons.information_circle_outline),
                title: Text(
                  'About Us',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                selected: radioController.selectedIndex.value == 1,
                selectedTileColor:
                    Theme.of(context).primaryColor.withOpacity(1),
                onTap: () {
                  radioController.updateSelectedIndex(1);
                  Get.toNamed(AppRoutes.ABOUT);
                },
              )),
          const SizedBox(height: 20),
          // Theme Toggle Button
          Obx(() => ListTile(
                leading: Icon(themeController.isDarkMode
                    ? Ionicons.sunny
                    : Ionicons.moon),
                title: Text(
                  themeController.isDarkMode
                      ? 'Switch to Light Mode'
                      : 'Switch to Dark Mode',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                onTap: () {
                  themeController.toggleTheme();
                },
              )),
        ],
      ),
    );
  }
}
