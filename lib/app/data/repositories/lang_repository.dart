import 'dart:ui';

import 'package:balatlife/app/data/providers/pref_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangRepository{
  late PrefProvider _provider;
  LangRepository._(){
    _provider=PrefProvider();
  }

  //Singleton
  static LangRepository _instance = LangRepository._();
  factory LangRepository()=>_instance;
  static LangRepository get instance => _instance;

  Locale getLang(){
    return _provider.getLang();
  }

  setLang(String lang){
     _provider.setLang(lang);
  }
}