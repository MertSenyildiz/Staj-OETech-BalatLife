import 'package:balatlife/app/data/repositories/lang_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/repositories/theme_repository.dart';

class SettingsController extends GetxController{
  final lang =[{'title':'English (US)','value':'en','flag_code':'US'},{'title':'Türkçe','value':'tr','flag_code':'TR'}];
  bool isDark=ThemeProvider.instance.isDark;
  setLan(String langCode){
    LangRepository.instance.setLang(langCode);
  }
  setTheme(bool? x){
    ThemeProvider.instance.changeTheme(!isDark);
    isDark=!isDark;
    update();
  }
}