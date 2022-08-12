import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../ui/theme/dark_theme.dart';
import '../../ui/theme/light_theme.dart';
import '../models/user.dart';

class PrefProvider{
  late final SharedPreferences _prefs=Get.find();
  late bool isDark;
   Locale getLang(){
     final String? langStr =_prefs.getString('lang');
     Locale? lang = (langStr == null)? Get.deviceLocale: Locale(langStr);
     return lang!;
  }
  setLang(String lang) async{
     Get.updateLocale(Locale(lang));
     await _prefs.setString('lang', lang);
  }
  
  setUser(User user)async{
     await _prefs.setString('user', jsonEncode(user.toJson()));
  }

  removeUser(){
     _prefs.remove('user');
  }

  User? getUser(){
    User? user;
      String? userJson = _prefs.getString('user');
      if(userJson !=null){
        user = User.fromJson(jsonDecode(userJson));
      }else{
        user=null;
      }
      return user;
  }
  //ThemeMode atar !ile gelirse değiştirme için kullanılır
  _ThemeMode(bool isDark){
    ThemeMode mode= isDark ? ThemeMode.dark:ThemeMode.light;
    Get.changeThemeMode(mode);
  }

  //ThemeData atar !ile gelirse değiştirme için kullanılır
  _ThemeData(bool isDark){
    ThemeData data= isDark ? darkTheme:lightTheme;
    Get.changeTheme(data);
  }

  setTheme(bool isDark)async{
     await _prefs.setBool('theme',isDark);
     this.isDark=isDark;
     _ThemeMode(isDark);
     _ThemeData(isDark);
  }

  getTheme(){
     bool isDark = _prefs.getBool('theme')??false;
     this.isDark=isDark;
     _ThemeMode(isDark);
     _ThemeData(isDark);
     ThemeMode mode= isDark ? ThemeMode.dark:ThemeMode.light;
  }
}