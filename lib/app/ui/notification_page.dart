import 'package:balatlife/app/ui/widgets/notifications_widget.dart';
import 'package:flutter/material.dart';
import'package:get/get.dart';
import'package:balatlife/app/controllers/notification_controller.dart';
class NotificationPage extends GetView<NotificationController>{
@override Widget
build(BuildContext context){
return Scaffold(
  appBar: AppBar(),
  body:NotificationsWidget(),
);
}
}