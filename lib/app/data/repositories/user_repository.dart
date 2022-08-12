import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/user.dart';
import '../providers/pref_provider.dart';

class UserRepository{
  late PrefProvider _provider;

  UserRepository._(){
    _provider=PrefProvider();
  }

  static UserRepository _instance = UserRepository._();
  factory UserRepository()=>_instance;
  static UserRepository get instance => _instance;

  static User? _user;

   User? get user=> _user;
   set user(User? user){
    _user=user;
  }

  setUser(){
     if(_user !=null){
       _provider.setUser(_user!);
     }
  }
  getUser(){
    _user=_provider.getUser();
  }

  removeUser(){
    _user=null;
    _provider.removeUser();
  }
}