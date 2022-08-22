import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

mixin PickDateMixin {
  datePicker(DateTime? date,TextEditingController cont,DateTime inital,DateTime first,DateTime last)async{
    final pick = await showDatePicker(
      context: Get.context!,
      initialDate:inital,
      firstDate:first,
      lastDate:last,
    );
    if(pick!=null){
      cont.text=pick.day.toString()+'/'+pick.month.toString()+'/'+pick.year.toString();
    }
    else{
      return;
    }
  }
}