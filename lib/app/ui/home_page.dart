import 'package:balatlife/app/controllers/home_controller.dart';
import 'package:balatlife/app/ui/widgets/drawer_widget.dart';
import 'package:balatlife/app/ui/widgets/notifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../data/consts/home_items.dart';

class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //INFO TODO:Kurallar
              Column(
                children: [
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    scrollDirection: Axis.vertical,
                    children: [
                      for(int i=0;i<dashboardRuleItems.length;i++)
                        GestureDetector(
                          onTap:(){Get.toNamed('/pdf',parameters:{'url':dashboardRuleItems[i]['url'],'type':dashboardRuleItems[i]['type']});},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color:dashboardRuleItems[i]['color']!,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //height: 250,

                              child: Column(
                                children: [
                                  Expanded(flex:1,child: Text(dashboardRuleItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)),
                                  Expanded(flex:1,child: FittedBox(fit:BoxFit.cover,child: Icon(Icons.insert_drive_file,color: Colors.white,))),
                                ],
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              ),

              //INFO TODO:Maaliyetler
              /*Column(
                children: [
                  Text("Maaliyetler"),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    children: [
                      for(int i=0;i<dashboardCostItems.length;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color:dashboardCostItems[i]['color']!,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 150,

                            child: Text(dashboardCostItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                        )
                    ],
                  ),
                ],
              ),*/
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<dashboardCostItems.length;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color:dashboardCostItems[i]['color']!,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 125,
                          width: 250,

                          child: Text(dashboardCostItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                        ),
                      )
                  ],
                ),
              ),
              //INFO TODO:Mesajlar
              Column(
                children: [
                  Text("Mesajlar"),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      for(int i=0;i<dashboardMesssageItems.length;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color:dashboardMesssageItems[i]['color']!,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: dashboardMesssageItems[i]['title']=="Y??netim Bildirimleri"?
                                //Text(dashboardMesssageItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                            NotificationsWidget(color:dashboardMesssageItems[i]['color']! ,title: dashboardMesssageItems[i]['title'],)
                            :Text(dashboardMesssageItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}