import 'dart:convert';

import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:balatlife/app/ui/widgets/snackbar_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/models/user.dart';
import '../data/repositories/auth_repository.dart';

class LoginController extends GetxController with StateMixin<User>{
  late final AuthRepository repository;

  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rememberMe = false.obs;
  LoginController(){
    repository = Get.find();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  updateRememberMe(bool status){
    rememberMe(status);
  }

  String? validator(String? value) {
    if (value==null || value.isEmpty) {
      return 'form_value_isEmpty'.tr;
    }
    return null;
  }

  //will be API call
  Future<bool> checkUser(String mail, String password) async{
      await repository.login(mail, password);
      if(UserRepository.instance.user !=null){
        return Future.value(true);
      }
      return Future.value(false);
  }

  void login() {
    if (loginFormKey.currentState!.validate()) {
      change(null, status: RxStatus.loading());

      checkUser(emailController.text, passwordController.text).then((auth) {
        if (auth) {
          change(null, status: RxStatus.success());
          SnackbarGenerator.authSnackbar(title:'login',message:'login_success',auth:true);
          if(rememberMe.value){
            UserRepository.instance.setUser();
          }
          Get.offAllNamed('/profile');
        } else {
          change(null, status: RxStatus.error());
          Get.back();
          SnackbarGenerator.authSnackbar(title:'login',message:'login_error',auth:false);
        }
        passwordController.clear();
      });
    }
    else{
      change(null, status: RxStatus.error());
    }

  }

 /* SnackbarController loginSnackbar(String title,String message,bool login){
      Color bgColor= login ? Colors.green:Colors.red;
      return Get.snackbar(title, message,backgroundColor: bgColor,colorText: Colors.white);
  }*/

}