import 'package:balatlife/app/bindings/regiter_bindings.dart';
import 'package:balatlife/app/bindings/settings_binding.dart';
import 'package:balatlife/app/ui/settings_page.dart';
import 'package:get/get.dart';

import '../bindings/login_binding.dart';
import '../bindings/profile_binding.dart';
import '../ui/init_page.dart';
import '../ui/login_page.dart';
import '../ui/profile_page.dart';
import '../ui/register_page.dart';
part './app_routes.dart';
class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => InitPage()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(),bindings: [LoginBinding()]),
    GetPage(
        name: Routes.REGISTER, page: () => RegisterPage(),bindings: [RegisterBinding()]),
    GetPage(
        name: Routes.PROFILE, page: () => ProfilePage(),bindings: [ProfileBinding()]),
    GetPage(
        name: Routes.SETTINGS, page: () => SettingsPage(),bindings:[SettingsBinding()]),
  ];
}