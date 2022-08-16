import 'package:balatlife/app/controllers/home_controller.dart';
import 'package:balatlife/app/ui/widgets/drawer_widget.dart';
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
          child: Column(
            children: [
              //INFO TODO:Kurallar
              Column(
                children: [
                  Text("Kurallar"),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    children: [
                      for(int i=0;i<dashboardRuleItems.length;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color:dashboardRuleItems[i]['color']!,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 150,

                            child: Text(dashboardRuleItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                        )
                    ],
                  ),
                ],
              ),

              //INFO TODO:Maaliyetler
              Column(
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
              ),


              //INFO TODO:Grafikler
              Column(
                children: [
                  Text("Grafikler"),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    scrollDirection: Axis.vertical,
                    children: [
                      for(int i=0;i<dashboardGraphsItems.length;i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color:dashboardGraphsItems[i]['color']!,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 100,

                            child: Text(dashboardGraphsItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
                          ),
                        )
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0;i<dashboardGraphsItems.length;i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color:dashboardGraphsItems[i]['color']!,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 125,
                          width: 250,

                          child: Center(child: Text(dashboardGraphsItems[i]['title']!.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)),
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}