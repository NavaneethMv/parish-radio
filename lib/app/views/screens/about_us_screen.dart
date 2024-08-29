import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:radio/app/views/widgets/drawer.dart';
import 'package:radio/app/views/widgets/svg_icon.dart';
import 'package:radio/app/controllers/radio_controller.dart';

class AboutUsPage extends StatelessWidget {
  final RadioController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () async {
          controller.updateSelectedIndex(0);
          return true;
        },
        child: (Scaffold(
            appBar: AppBar(),
            drawer: RadioDrawer(),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Center(
                    child: ThemedSvgIcon(
                      lightIconPath: 'assets/icons/icon_light.svg',
                      darkIconPath: 'assets/icons/icon_dark.svg',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      'We are a team of passionate individuals dedicated to bringing you the best experience. Connect with us on social media!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ))));
  }
}
