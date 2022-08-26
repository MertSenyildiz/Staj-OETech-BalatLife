import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin FormDropdownInputMixin{
  buildDropDown(dynamic value,List<Map<String,dynamic>> list,void Function(Object?)? func,String hint,{bool isExpanded=false}){
    /*return GetBuilder<CurrentAccountsController>(builder: (_){

    });*/
    return DropdownButton(
      isExpanded: isExpanded,
      value:value?.toString(),
      items: list.map((val){
        return DropdownMenuItem<String>(
          value:val['value'].toString(),
          child:Row(
            children: [
              Text(val['text'].toString()),
            ],
          ),
        );
      }).toList(),
      hint: Text(hint.tr),
      onChanged: func,
    );
  }
}