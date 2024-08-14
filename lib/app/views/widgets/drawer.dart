import 'package:flutter/material.dart';
import 'package:radio/app/utils/color_select.dart';

class RadioDrawer extends StatelessWidget {
  const RadioDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorSelect.secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.radio,
                  size: 55,
                ),
                Text(
                  "4U radio",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // exit the app
                Icon(
                  Icons.exit_to_app,
                  size: 28,
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About Us'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HomePage"),
          )
        ],
      ),
    );
  }
}
