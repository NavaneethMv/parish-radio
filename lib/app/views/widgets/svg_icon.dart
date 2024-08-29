import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemedSvgIcon extends StatelessWidget {
  final String lightIconPath;
  final String darkIconPath;
  final double width;
  final double height;

  ThemedSvgIcon({
    required this.lightIconPath,
    required this.darkIconPath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SvgPicture.asset(
      isDarkMode ? darkIconPath : lightIconPath,
      width: width,
      height: height,
    );
  }
}
