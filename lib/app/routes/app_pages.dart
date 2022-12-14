import 'package:balatlife/app/bindings/current_firms_binding.dart';
import 'package:balatlife/app/bindings/fixtures_binding.dart';
import 'package:balatlife/app/bindings/home_binding.dart';
import 'package:balatlife/app/bindings/regiter_bindings.dart';
import 'package:balatlife/app/bindings/settings_binding.dart';
import 'package:balatlife/app/ui/announcement_page.dart';
import 'package:balatlife/app/ui/current_firms_page.dart';
import 'package:balatlife/app/ui/fixtures_page.dart';
import 'package:balatlife/app/ui/home_page.dart';
import 'package:balatlife/app/ui/property_page.dart';
import 'package:balatlife/app/ui/settings_page.dart';
import 'package:get/get.dart';

import '../bindings/announcement_binding.dart';
import '../bindings/current_accounts_binding.dart';
import '../bindings/dues_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/notification_binding.dart';
import '../bindings/notifications_widget_binding.dart';
import '../bindings/payments_binding.dart';
import '../bindings/pdf_binding.dart';
import '../bindings/profile_binding.dart';
import '../bindings/property_binding.dart';
import '../bindings/purchases_binding.dart';
import '../ui/current_accounts_page.dart';
import '../ui/dues_page.dart';
import '../ui/init_page.dart';
import '../ui/login_page.dart';
import '../ui/notification_page.dart';
import '../ui/payments_page.dart';
import '../ui/pdf_page.dart';
import '../ui/profile_page.dart';
import '../ui/purchases_page.dart';
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
        name: Routes.PROFILE, page: () => ProfilePage(),bindings: [ProfileBinding(),SettingsBinding()]),
    GetPage(
        name: Routes.SETTINGS, page: () => SettingsPage(),bindings:[SettingsBinding()]),
    GetPage(
        name: Routes.HOME, page: () => HomePage(),bindings:[HomeBinding(),NotificationsWidgetBinding()]),
    GetPage(
        name: Routes.CURRENT_ACCOUNTS, page: () => CurrentAccountsPage(),bindings:[CurrentAccountsBinding()]),
    GetPage(
        name: Routes.CURRENT_FIRMS, page: () => CurrentFirmsPage(),bindings:[CurrentFirmsBinding()]),
    GetPage(
        name: Routes.PROPERTIES, page: () => PropertyPage(),bindings:[PropertyBinding()]),
    GetPage(
        name: Routes.PAYMENTS, page: () => PaymentsPage(),bindings:[PaymentsBinding()]),
    GetPage(
        name: Routes.PURCHASES, page: () => PurchasesPage(),bindings:[PurchasesBinding()]),
    GetPage(
        name: Routes.FIXTURES, page: () => FixturesPage(),bindings:[FixturesBinding()]),
    GetPage(
        name: Routes.DUES, page: () => DuesPage(),bindings:[DuesBinding()]),
    GetPage(
        name: Routes.ANNOUNCEMENT, page: () => AnnouncementPage(),bindings:[AnnouncementBinding(),NotificationsWidgetBinding()]),
    GetPage(
        name: Routes.NOTIFICATIONS, page: () => NotificationPage(),bindings:[NotificationBinding(),NotificationsWidgetBinding()]),
    GetPage(
        name: Routes.PDF, page: () => PdfPage(),bindings:[PdfBinding()]),
  ];
}