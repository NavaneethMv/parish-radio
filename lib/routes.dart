import 'package:get/get.dart';
import 'package:radio/app/views/screens/home_screen.dart';
import 'package:radio/app/views/screens/about_us_screen.dart';

class AppRoutes {
  static const HOME = '/';
  static const ABOUT = '/about';

  static final routes = [
    GetPage(name: HOME, page: () => HomeScreen()),
    GetPage(name: ABOUT, page: () => AboutUsPage()),
  ];
}
