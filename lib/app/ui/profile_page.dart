import 'dart:io';

import 'package:balatlife/app/controllers/settings_controller.dart';
import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:balatlife/app/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../controllers/profile_controller.dart';
import '../data/repositories/auth_repository.dart';

class ProfilePage extends GetView<ProfileController> {
  String defaultImg="assets/images/profile.png";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(onPressed:(){Get.find<AuthRepository>().logout();}, icon:Icon(Icons.logout))
        ],
      ),
      drawer: DrawerWidget(),
      body: buildProfilEdit(context),
    );
      /*DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.blue,
          elevation: 0,
          bottom: TabBar(
            labelColor: Colors.blue,
            tabs: [Tab(icon: Icon(Icons.person)), Tab(icon: Icon(Icons.edit))],
          ),
        ),
        drawer: DrawerWidget(),
        body: TabBarView(
          children: [
            buildProfile(context.height),
            buildProfilEdit(),
          ],
        ),
      ),
    );*/
  }

  buildIcon(Color color,IconData icon) => buildCircle(
      child: buildCircle(
        color: color,
        all: 8,
        child: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
      all: 3,
      color: Colors.white);

  buildCircle(
      {required Widget child, required double all, required Color color}) =>
      ClipOval(
        child:
        Container(padding: EdgeInsets.all(all), color: color, child: child),
      );

  buildPhoto(Function() func) => GetBuilder<ProfileController>(builder: (_) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Container(
          color: Colors.transparent,
          width: 150,
          height: 150,
          child: InkWell(
            onTap: func,
            child: (_.imageFile != null)
                ? Image.file(_.imageFile!,fit: BoxFit.cover,)
                : FadeInImage(
              fit: BoxFit.cover,
              placeholder: AssetImage(defaultImg),
              image:NetworkImage(UserRepository.instance.user!.resimYolu),
              imageErrorBuilder:(context,error,stackTrace){return Image.asset(defaultImg);},
            ),
          ),
        ),
      ),
    );
  });


  buildProfilEdit(BuildContext context){
    return SafeArea(child:ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(top:20),
      children: [
        Center(
          child: Stack(
            children: [
              buildPhoto(controller.imageSourceBottomSheet),
              Positioned(
                bottom: 0,
                right: 4,
                child: buildIcon(Colors.blue,Icons.add_a_photo),
              ),
            ],
          ),
        ),
        SizedBox(height: 35),
        Center(
            child: Text(
                UserRepository.instance.user!.mail,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        buildInputs(context),
        SizedBox(height: 35,),
        Row(
          children: [
            Spacer(flex:1),
            Expanded(flex:5,child: ElevatedButton(onPressed:controller.editProfile, child: Text("edit".tr),style:ElevatedButton.styleFrom(fixedSize: Size.fromHeight(50)))),
            Spacer(flex:1),
          ],
        ),
        SizedBox(height: 15,),
      ],
    ));
  }

  buildInputs(BuildContext context){
    return Column(
        children: [
          Row(
            children: [
              Spacer(flex:3),
              Expanded(flex:5,child: TextButton(onPressed: (){print("Controller a eklenecek");}, child: Text("change_password".tr),style:ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                    Colors.transparent),
              ),)),
              Spacer(flex:3),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text(
                  "name".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Row(
            children: [
              Spacer(flex:1),
              Expanded(flex:5,child: buildInput(cont: controller.nameController,allowMultiLine: false,)),
              Spacer(flex:1)
            ],
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text(
                  "surname".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Row(
            children: [
              Spacer(flex:1),
              Expanded(flex:5,child: buildInput(cont: controller.surnameController,allowMultiLine: false,)),
              Spacer(flex:1)
            ],
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text(
                  "phone".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Row(children: [Spacer(flex:1),Expanded(flex:5 ,child:buildPhoneInput(context) ),Spacer(flex:1)],),
          SizedBox(height: 35,),
          Row(
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text(
                  "address".tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
          Row(
            children: [
              Spacer(flex:1),
              Expanded(flex:5,child: buildInput(cont: controller.addressController,allowMultiLine: true,)),
              Spacer(flex:1)
            ],
          ),
        ],
      );
  }

  buildPhoneInput(BuildContext context){
    return GetBuilder(
      init: Get.find<SettingsController>(),
        builder: (_){
      return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Get.isDarkMode? Theme.of(context).primaryColor:Colors.white,
          borderRadius: BorderRadius.circular(10.7),
        ),
        child: InternationalPhoneNumberInput(
          textFieldController: controller.phoneController,
          countries: ['TR', 'GB'],
          selectorConfig: SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
          ),
          onInputChanged: (_) => {controller.number = _},
        ),
      );
    });
  }

  Widget buildInput(
      {required TextEditingController cont,
        bool allowMultiLine = false,
        TextInputType? keyboard,
        bool obscure = false,
        bool readOnly=false}) {
    return TextFormField(
      controller: cont,
      textInputAction: TextInputAction.next,
      keyboardType: keyboard ?? TextInputType.text,
      obscureText: obscure,
      /*decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),*/
      maxLines: allowMultiLine ? 2 : 1,
    );
  }





 /* buildProfile(double height) {
    return SafeArea(
        child: ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(top:20),
      children: [
        Center(
          child: Stack(
            children: [
              buildPhoto((){}),
              Positioned(
                bottom: 0,
                right: 4,
                child: buildIcon(Colors.blue,Icons.person),
              ),
            ],
          ),
        ),
        SizedBox(height: 35),
        Center(
            child: Text(
                UserRepository.instance.user!.isim +
                    ' ' +
                    UserRepository.instance.user!.soyIsim,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        Center(
            child: Text(UserRepository.instance.user!.mail,
                style: TextStyle(fontWeight: FontWeight.w300))),
        SizedBox(height: 35),
        Row(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 3,
              child: Text(
                "phone".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
        buildField(height/20,3,UserRepository.instance.user!.telefon,25),
        SizedBox(height: 35),
        Row(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 3,
              child: Text(
                "address".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
        buildField(height/5,5,UserRepository.instance.user!.adres,20),
      ],
    ));
  }*/

  /*buildField(double height,double padding,String text,double fontSize){
    return Row(
      children: [
        Spacer(flex: 1),
        Expanded(
          flex: 3,
          child: Container(
            height: height,
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(text,style: TextStyle(fontSize: fontSize)),
          ),
        ),
        Spacer(flex: 1),
      ],
    );
  }*/


}
