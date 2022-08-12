
import 'package:balatlife/app/data/repositories/lang_repository.dart';
import 'package:balatlife/app/data/repositories/theme_repository.dart';
import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:balatlife/app/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/bindings/service_binding.dart';
import 'app/data/providers/pref_provider.dart';
import 'app/localizations/languages/app_translations.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app/ui/theme/dark_theme.dart';
import 'app/ui/theme/light_theme.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await ServiceDep().dependencies();//Dependency injection
    await dotenv.load(fileName: ".dev.env");
    UserRepository.instance.getUser();
    ThemeProvider.instance.getTheme();
    runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages,
      locale: LangRepository.instance.getLang(),
      translationsKeys: AppTranslation.translations,
      fallbackLocale:Locale('en', 'US'),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
    ));
}




