import 'package:balatlife/app/data/repositories/theme_repository.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsPage extends GetView<SettingsController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child:Row(
          children: [
            Spacer(flex:2),
            Expanded(
              flex: 6,
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(title:Text("language".tr,style: TextStyle(fontWeight: FontWeight.bold),),trailing:GetBuilder<SettingsController>(builder: (_){
                    return DropdownButton(
                      value:Get.locale!.languageCode,
                      items: _.lang.map((Map<String,String> lan){
                        return DropdownMenuItem<String>(
                          value:lan['value'],
                          child:Row(
                            children: [
                              Flag.fromString(lan['flag_code']!,width:25,),
                              SizedBox(width: 15,),
                              Text(lan['title'].toString()),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (String? langCode){
                          _.setLan(langCode!);
                      },
                    );
                  },

                  ),),
                  ListTile(title:Text("dark_mode".tr,style: TextStyle(fontWeight: FontWeight.bold),),trailing:GetBuilder<SettingsController>(builder: (_){
                    return Switch(value:_.isDark, onChanged:_.setTheme);
                  },
                  ),),
                ],
              ),
            ),
            Spacer(flex:2),
          ],
        ),
      ),
    );
  }

}