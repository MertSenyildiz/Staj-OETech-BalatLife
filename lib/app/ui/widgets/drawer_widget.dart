import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/user_repository.dart';

class DrawerWidget extends StatelessWidget{
  String defaultImg="assets/images/profile.png";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          DrawerHeader(child: Container(child: Row(
            children: [
              Container(width:140,height: 140,child: ClipRRect(borderRadius: BorderRadius.circular(100),child: FadeInImage(
                fit: BoxFit.cover,
                placeholder: AssetImage(defaultImg),
                image:NetworkImage(UserRepository.instance.user!.resimYolu),
                imageErrorBuilder:(context,error,stackTrace){return Image.asset(defaultImg);},
              ),)),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(UserRepository.instance.user!.isim+' '+UserRepository.instance.user!.soyIsim,style: TextStyle(color: Colors.blue,fontSize: 15),),
                  SizedBox(height: 5,),
                  Text(UserRepository.instance.user!.mail),
                ],
              ),
            ],
          )),),
          ListView(
            shrinkWrap: true,
          ),
          Spacer(),
          Divider(),
          InkWell(
            child: ListTile(
              title: Text("settings".tr),
              enableFeedback: true,
              leading: Icon(Icons.settings),
              onTap: (){Get.toNamed('/settings');},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text("logout".tr),
              leading: Icon(Icons.logout),
              onTap: () {
                Get.find<AuthRepository>().logout();
              },
            ),
          ),
        ],
      ),
    );
  }

}