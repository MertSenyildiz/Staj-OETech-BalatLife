import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controllers/notifications_widget_controller.dart';

class NotificationsWidget extends GetView<NotificationsWidgetController> {
  Color color;
  String? title;
  NotificationsWidget({this.color=Colors.transparent,this.title});
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<NotificationsWidgetController>(builder: ((_) {
          return Scaffold(
            backgroundColor: color,
            body: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  title!=null?Column(
                    children: [
                      Text(title!.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 16,)
                    ],
                  ):Container(),
                  ..._.notifications
                      .asMap()
                      .map((key, value) => MapEntry(
                          key,
                          Column(
                            children: [
                              ListTile(
                                leading: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.notifications_none,
                                      color: Colors.blue,
                                      size: 32,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    )
                                  ],
                                ),
                                title: Text(value['title']!),
                                subtitle: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("Date: "),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Text(value['date']!),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("Publisher: "),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Text(value['publisher']!),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                                onTap: () {
                                  _.onTappedTile(key);
                                },
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(height: 16,),
                            ],
                          )
                          ))
                      .values
                      .toList(),
                ],
            ),
          );
        }),
    );
  }
}
