
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../providers/pref_provider.dart';

class ThemeProvider extends GetxController{
  late PrefProvider _provider;
  ThemeProvider._(){
    _provider = PrefProvider();
  }
  //Singleton
  static ThemeProvider _instance = ThemeProvider._();

  factory ThemeProvider()=> _instance;

  static ThemeProvider get instance => _instance;

  bool  get isDark=>_provider.isDark;

  changeTheme(bool x)async{
    await _provider.setTheme(x);
  }

  getTheme(){
    _provider.getTheme();
  }
}