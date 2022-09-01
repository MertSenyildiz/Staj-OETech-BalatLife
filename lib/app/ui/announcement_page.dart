import 'package:balatlife/app/mixins/form_dropdown_input_mixin.dart';
import 'package:balatlife/app/mixins/form_text_input_mixin.dart';
import 'package:balatlife/app/ui/widgets/notifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:balatlife/app/controllers/announcement_controller.dart';

class AnnouncementPage extends GetView<AnnouncementController> with FormTextInputMixin,FormDropdownInputMixin{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.mail,color: Colors.blue,),text:"Announcement",),
              Tab(icon: Icon(Icons.computer,color: Colors.blue),text: "New Announcement",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NotificationsWidget(),
            buildCreate(),
          ],
        ),
      ),
    );
  }

  Widget buildCreate(){
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: false,
          children: [
            buildInput(cont: controller.headerController,label: "Başlık",),
            SizedBox(height: 16,),
            GetBuilder<AnnouncementController>(builder:((_){
              return Row(
                children: [
                  Expanded(flex:7,child:buildDropDown(_.block, _.blocks,_.changeBlock, 'block',isExpanded: true)),
                  Spacer(flex:1),
                  Expanded(flex: 7,child: buildDropDown(_.apartment, _.apartments,_.changeApartment, 'apartment',isExpanded: true))
                ],
              );
            })),
            SizedBox(height: 16,),
            buildInput(cont: controller.contentController,label:"İçerik",allowMultiLine: true,line: 5,keyboard: TextInputType.text),
            SizedBox(height: 50,),
            ElevatedButton(onPressed:(){print("TODO yayınla ekle");}, child: Text("Yayınla"))
          ],
        ),
      ),
    );
  }
}
