import 'package:balatlife/app/extensions/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

mixin PickDateMixin {
  datePicker(DateTime? date,TextEditingController cont,DateTime initial,DateTime first,DateTime last,{bool Function(DateTime day)? selectableDays,bool justMonth=false})async{
    date = await showDatePicker(
      locale: Get.locale,
      context: Get.context!,
      initialDate:initial,
      firstDate:first,
      lastDate:last,
      selectableDayPredicate:selectableDays,
);
    if(date!=null){
      if(justMonth){
        cont.text=date.day.toString()+'/'+date.month.toString()+'/'+date.year.toString()+' - '+date.lastDayOfMonth.day.toString()+'/'+date.month.toString()+'/'+date.year.toString();
      }else{
        cont.text=date.day.toString()+'/'+date.month.toString()+'/'+date.year.toString();
      }
      return date;
    }
    else{
      return;
    }
  }
}