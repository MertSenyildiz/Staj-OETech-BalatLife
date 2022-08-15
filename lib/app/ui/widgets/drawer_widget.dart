import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/consts/drawer_items.dart';
import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/user_repository.dart';

class DrawerWidget extends StatelessWidget {
  String defaultImg = "assets/images/profile.png";
  // TODO:Role Göre şekillendirme
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          DrawerHeader(
            child: Container(
                child: Row(
              children: [
                Container(
                    width: 140,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        placeholder: AssetImage(defaultImg),
                        image: NetworkImage(
                            UserRepository.instance.user!.resimYolu),
                        imageErrorBuilder: (context, error, stackTrace) {
                          return Image.asset(defaultImg);
                        },
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      UserRepository.instance.user!.isim +
                          ' ' +
                          UserRepository.instance.user!.soyIsim,
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(UserRepository.instance.user!.mail),
                  ],
                ),
              ],
            )),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: ListView(shrinkWrap: true, children: [
              buildListTile(title:"profile", whereTo: '/profile',icon: Icons.person),
              buildListTile(title:"home", whereTo: '/home',icon: Icons.home),
                 // TODO:if(UserRepository.instance.user!.isim=="denem")...[Text("mrb")],
              ExpansionTile(
                title: Text('Admin Panel'),
                leading: Icon(Icons.admin_panel_settings),
                children: [
                  for (int i = 0; i < adminPanelItems.length; i++)
                    buildListTile(title: adminPanelItems[i]['title']!, whereTo: adminPanelItems[i]['whereTo']!),
                ],
              ),
              buildListTile(title:"message notifications", whereTo: '/home',icon: Icons.mail),
              ExpansionTile(
                title: Text('Faturalar'),
                leading: Icon(Icons.bar_chart),
                children: [
                  for (int i = 0; i < invoiceItems.length; i++)
                    buildListTile(title: invoiceItems[i]['title']!, whereTo: invoiceItems[i]['whereTo']!),
                ],
              ),
              ExpansionTile(
                title: Text('Duyurular'),
                leading: Icon(Icons.announcement),
                children: [
                  for (int i = 0; i < announcementItems.length; i++)
                    buildListTile(title: announcementItems[i]['title']!, whereTo: announcementItems[i]['whereTo']!),
                ],
              ),
            ]),
          ),
          //Spacer(),
          Divider(),
          InkWell(
            child: ListTile(
              title: Text("settings".tr),
              enableFeedback: true,
              leading: Icon(Icons.settings),
              onTap: () {
                Get.toNamed('/settings');
              },
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

  buildListTile({required String title,IconData? icon,required String whereTo}){
      return InkWell(
        child: ListTile(
          title: Text(title.tr),
          leading: icon!=null? Icon(icon):null,
          onTap: () {
            Get.toNamed(whereTo);
          },
        ),
      );
  }
}
