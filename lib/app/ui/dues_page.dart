import 'package:balatlife/app/extensions/date_time_extension.dart';
import 'package:flutter/material.dart';
import'package:get/get.dart';
import'package:balatlife/app/controllers/dues_controller.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../mixins/form_dropdown_input_mixin.dart';
import '../mixins/form_text_input_mixin.dart';
class DuesPage extends GetView<DuesController> with FormTextInputMixin,FormDropdownInputMixin{
@override Widget
build(BuildContext context){
final items=[buildDues(),buildCreateForm()];
return Scaffold(
  appBar: AppBar(),
  body: GetBuilder<DuesController>(builder:((_){
    return /*ListView(
      shrinkWrap: false,
      children: [items[_.currentIndex]],
    );*/
      items[_.currentIndex];
  })),
  bottomNavigationBar: GetBuilder<DuesController>(builder:(_){
    return BottomNavigationBar(onTap: _.onItemTapped, items: [
      BottomNavigationBarItem(icon:Icon(Icons.credit_card),label: 'dues'.tr),
      BottomNavigationBarItem(icon:Icon(Icons.create),label: 'create'.tr),
    ],currentIndex: _.currentIndex,);
  }),
);
}


List<Map<String, dynamic>> data = [
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},
  {
    'donem': '01/01/2022 - 31/01/2022', 'fatura': 'd68fs99cs', 'tutar': '696,75', 'aidat': '122', 'elektrik': '56,45', 'sicak_su': '86,45','su': '86,45','isinma': '86,45','asansor': '86,45','guvenlik': '86,45','bahce': '86,45','havuz': '86,45','ek_1': '86,45','ek_2': '86,45','diger': '86,45','okundu':true,'tarih': '01/02/2022',},

];
final style = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.white,
    overflow: TextOverflow.ellipsis);

buildDues(){
  final height=Get.context!.height;

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      width: height < 1600 ? 1600 : height,
      child: /*StickyHeader(
        header: Container(
          color: Theme.of(Get.context!).primaryColor,
          width: height < 1600 ? 1600 : height,
          height: 75,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  "Dönem",
                  style: style,
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text("Fatura", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Tutar", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Aidat", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Elektrik", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Sıcak Su", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Su", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Isınma", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Asansör", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Güvenlik", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Bahçe", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Havuz", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Ek1", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Ek2", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Diğer", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 2,
                child: Text("Fatura Okundu", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text("Tarih", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Düzenle", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Yayınla", style: style),
              ),
            ],
          ),
        ),
        content: Container(
          width: height < 1600 ? 1600 : height,
          child: Column(
            children: [
              ...data.map((e) => Container(
                height: 75,
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: Theme.of(Get.context!).primaryColor,
                          width: 2)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text(e['donem']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 4,
                      child: Text(e['fatura']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['tutar']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child:Text(e['aidat']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['elektrik']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['sicak_su']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['su']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['isinma']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['asansor']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['guvenlik']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['bahce']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['havuz']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['ek_1']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['ek_2']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 3,
                      child: Text(e['diger']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 2,
                      child: Text(e['okundu'].toString()),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                      flex: 4,
                      child: Text(e['tarih']),
                    ),
                    Spacer(flex: 1),
                    Expanded(
                        flex: 3,
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            //controller.onItemTapped(1);
                          },
                        )),
                    Spacer(flex: 1),
                    Expanded(
                        flex: 3,
                        child: IconButton(
                          icon: Icon(Icons.rss_feed),
                          onPressed: () {
                            //controller.onItemTapped(1);
                          },
                        )),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),*/
      StickyHeader(
        header: Container(
          color: Theme.of(Get.context!).primaryColor,
          width: height < 1600 ? 1600 : height,
          height: 75,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  "Dönem",
                  style: style,
                ),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text("Fatura", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Tutar", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Aidat", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Elektrik", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Sıcak Su", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Su", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Isınma", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Asansör", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Güvenlik", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Bahçe", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Havuz", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Ek1", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Ek2", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Diğer", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 2,
                child: Text("Fatura Okundu", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 4,
                child: Text("Tarih", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Düzenle", style: style),
              ),
              Spacer(flex: 1),
              Expanded(
                flex: 3,
                child: Text("Yayınla", style: style),
              ),
            ],
          ),
        ),
        content: ListView(
          shrinkWrap: false,
          children: [
            Container(
              width: height < 1600 ? 1600 : height,
              child: Column(
                children: [
                  ...data.map((e) => Container(
                    height: 75,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(Get.context!).primaryColor,
                              width: 2)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(e['donem']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(e['fatura']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['tutar']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child:Text(e['aidat']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['elektrik']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['sicak_su']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['su']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['isinma']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['asansor']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['guvenlik']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['bahce']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['havuz']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['ek_1']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['ek_2']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(e['diger']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 2,
                          child: Text(e['okundu'].toString()),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                          flex: 4,
                          child: Text(e['tarih']),
                        ),
                        Spacer(flex: 1),
                        Expanded(
                            flex: 3,
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                //controller.onItemTapped(1);
                              },
                            )),
                        Spacer(flex: 1),
                        Expanded(
                            flex: 3,
                            child: IconButton(
                              icon: Icon(Icons.rss_feed),
                              onPressed: () {
                                //controller.onItemTapped(1);
                              },
                            )),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

buildCreateForm(){
  return GetBuilder<DuesController>(builder: ((_){
    return ListView(
      shrinkWrap: false,
      children: [
        Stepper(
          physics: NeverScrollableScrollPhysics(),controlsBuilder: (BuildContext context, ControlsDetails controls) {
          return Row(children: [
            Expanded(
              flex: 4,
              child: TextButton(
                onPressed: controls.onStepContinue,
                child: Text(
                  'continue'.tr,
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, primary: Colors.white),
              ),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 4,
              child: TextButton(
                onPressed: controls.onStepCancel,
                child: Text('cancel_stepper'.tr),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, primary: Colors.white),
              ),
            ),
            Spacer(flex: 1),
          ]);
        },
          currentStep:_.currentStep,
          onStepContinue: _.onStepContinue,
          onStepCancel:_.onStepCancel,
          onStepTapped: _.onStepTapped,
          steps: [buildFirstStep(),buildSecondStep(),buildThirdStep()],
        ),
      ],
    );
  }));
}

final blocks=[{'value':'A','text':'A'},{'value':'B','text':'B'},];
final apartments=[{'value':'1','text':'1'},{'value':'2','text':'2'},];
buildFirstStep(){
  return Step(
    title: Text("Mülk Seçimi"),
    content:Form(
      key: controller.formKeys[0],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildDropDown(controller.block, blocks,controller.changeBlock,'block',isExpanded: true),
            SizedBox(height: 8,),
            buildDropDown(controller.apartment, apartments,controller.changeApartment,'apartment',isExpanded: true),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),
    isActive: controller.currentStep >= 0,
    state:
    controller.currentStep > 0 ? StepState.complete : StepState.indexed,
  );
}

buildSecondStep(){
  return Step(
    title: Text("Fatura Bilgileri"),
    content: Form(
      key: controller.formKeys[1],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                buildInput(cont:controller.dateController,label:'Dönem',readOnly: true),
                Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                  await controller.pickDate(controller.date,controller.dateController,DateTime(DateTime.now().year,DateTime.now().month,1),DateTime(2016),DateTime(DateTime.now().year+1,0));
                },
                  icon:Icon(Icons.today),)),
              ],
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),
    isActive: controller.currentStep >= 1,
    state:
    controller.currentStep > 1 ? StepState.complete : StepState.indexed,
  );
}

buildThirdStep(){
  return Step(
    title: Text("Tutarlar"),
    content: Form(
      key:controller.formKeys[2],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.duesController,keyboard: TextInputType.number,label:"Aidat")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.electricityController,keyboard: TextInputType.number,label:"Elektrik")),
            ],),
            SizedBox(height: 8,),
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.waterController,keyboard: TextInputType.number,label:"Su")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.hotWaterController,keyboard: TextInputType.number,label:"Sıcak Su")),
            ],),
            SizedBox(height: 8,),
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.heatingController,keyboard: TextInputType.number,label:"Isınma")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.elevatorController,keyboard: TextInputType.number,label:"Asansör")),
            ],),
            SizedBox(height: 8,),
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.poolController,keyboard: TextInputType.number,label:"Havuz")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.gardenController,keyboard: TextInputType.number,label:"Bahçe")),
            ],),
            SizedBox(height: 8,),
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.securityController,keyboard: TextInputType.number,label:"Güvenlik")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.otherController,keyboard: TextInputType.number,label:"Diğer")),
            ],),
            SizedBox(height: 8,),
            Row(children: [
              Expanded(flex: 7,child: buildInput(cont: controller.addOneController,keyboard: TextInputType.number,label:"Ek 1")),
              Spacer(flex: 1,),
              Expanded(flex: 7,child: buildInput(cont: controller.addTwoController,keyboard: TextInputType.number,label:"Ek 2")),
            ],),
            SizedBox(height: 8,),
            buildInput(cont: controller.totalCostController,keyboard: TextInputType.number,label:"Toplam Tutar"),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),
    isActive: controller.currentStep >= 2,
    state:
    controller.currentStep > 2 ? StepState.complete : StepState.indexed,
  );
}
}