import 'package:balatlife/app/controllers/home_controller.dart';
import 'package:balatlife/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: Center(child: Text("Hoşgeldin"),),
      ),
    );
  }

}