import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:balatlife/app/ui/login_page.dart';
import 'package:balatlife/app/ui/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class InitPage extends StatefulWidget{
  @override
  State<InitPage> createState()=>_InitPageState();

}

class _InitPageState extends State<InitPage>{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      (UserRepository.instance.user!=null)?Get.offNamed('/home'):Get.offNamed('/login');
    });
    return Center(child: CircularProgressIndicator());
  }
}