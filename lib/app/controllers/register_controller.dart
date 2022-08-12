import 'package:balatlife/app/data/models/user.dart';
import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:balatlife/app/ui/widgets/snackbar_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../data/models/register_model.dart';
import '../data/repositories/auth_repository.dart';

class RegisterController extends GetxController with StateMixin<User>{

  late final AuthRepository repository;
  RegisterController(){
    repository=Get.find();
  }
  final registerFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final surnameController =TextEditingController();
  final addressController=TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordAgainController = TextEditingController();
  final phoneController = TextEditingController();
  PhoneNumber number = PhoneNumber();
  @override
  void onClose() {
    nameController.dispose();
    surnameController.dispose();
    addressController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordAgainController.dispose();
    super.onClose();
  }

  String? stringValidator(String? value) {
    if (value==null || value.isEmpty) {
      return 'form_value_isEmpty'.tr;
    }
    return null;
  }

  String? mailValidator(String? value) {
    if (!GetUtils.isEmail(value??'')) {
      return 'form_value_invalidEmail'.tr;
    }
    return null;
  }

  String? passwordValidator(String? value){
    if(passwordController.text != value || value==null||value.isEmpty){
      return 'form_value_dontMatch'.tr;
    }
    return null;
  }

  String? phoneNumberValidator(String? value){
   // RegExp phoneExp = new RegExp(r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$',caseSensitive: false);
    if(!GetUtils.isPhoneNumber(value??'')){
      return 'form_value_invalidPhone'.tr;
    }
    return null;
  }

  Future<bool> checkUser(RegisterModel register) async{
    await repository.register(register);
    if(UserRepository.instance.user !=null){
      return Future.value(true);
    }
    return Future.value(false);
  }

  void register() {
    if(registerFormKey.currentState!.validate()&& GetUtils.isPhoneNumber(number.toString())){
      change(null, status: RxStatus.loading());
      RegisterModel register = RegisterModel(mail: emailController.text, isim: nameController.text, soyIsim: surnameController.text, adres: addressController.text, password: passwordController.text, phone: number.toString());
       checkUser(register).then((auth){
        if(auth){
          change(null, status: RxStatus.success());
          SnackbarGenerator.authSnackbar(title: "register", message: "register_success", auth: true);
          Get.offNamed("/profile");
        }
        else{
          change(null, status: RxStatus.error());
          Get.back();
          SnackbarGenerator.authSnackbar(title: "register", message: "register_error", auth: false);
        }
      });
    }
    else{
      change(null, status: RxStatus.error());
      SnackbarGenerator.authSnackbar(title: "register", message: "register_error", auth: false);
    }
  }

  SnackbarController authSnackbar(String title,String message,bool register){
    Color bgColor= register ? Colors.green:Colors.red;
    return Get.snackbar(title, message,backgroundColor: bgColor,colorText: Colors.white);
  }
}