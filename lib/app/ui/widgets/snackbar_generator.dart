import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SnackbarGenerator{
  static SnackbarController authSnackbar({required String title,required String message,required bool auth}) {
    Color bgColor= auth ? Colors.green:Colors.red;
    return Get.snackbar(title.tr, message.tr,backgroundColor: bgColor,colorText: Colors.white);
  }

}