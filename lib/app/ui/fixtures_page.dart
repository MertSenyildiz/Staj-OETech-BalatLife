import 'package:balatlife/app/mixins/form_dropdown_input_mixin.dart';
import 'package:balatlife/app/mixins/form_text_input_mixin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:balatlife/app/controllers/fixtures_controller.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class FixturesPage extends GetView<FixturesController> with FormTextInputMixin,FormDropdownInputMixin{
  @override
  Widget build(BuildContext context) {
    final items = [buildFixtures(),buildCreateForm()];
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<FixturesController>(builder: ((_) {
        return items[_.currentIndex];
      })),
      bottomNavigationBar: GetBuilder<FixturesController>(
        builder: ((_) {
          return BottomNavigationBar(onTap: _.onItemTapped, items: [
            BottomNavigationBarItem(icon:Icon(Icons.credit_card),label: 'fixtures'.tr),
            BottomNavigationBarItem(icon:Icon(Icons.create),label: 'create'.tr),
          ],currentIndex: _.currentIndex,);
        }),
      ),
    );
  }

  ScrollController firstScroll = ScrollController();
  ScrollController secondScroll = ScrollController();

  List<Map<String, dynamic>> data = [
    {
      'g_grubu': 'Test', 'g_adi': 'Deneme', 'f_tanimi': 'test', 'aciklama': 'deneme', 'tutar': '56500.15', 'tarih': '20/11/2050', 'fatura_no': '62828158'},
  ];
  final style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white,
      overflow: TextOverflow.ellipsis);

  buildFixtures(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: Get.context!.height < 720 ? 720 : Get.context!.height,
        child: StickyHeader(
          header: Container(
            color: Theme.of(Get.context!).primaryColor,
            height: 75,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Gider Grubu",
                    style: style,
                  ),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Gider Adı", style: style),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Açıklama", style: style),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Tutar", style: style),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Tarih", style: style),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Fatura No", style: style),
                ),
                Spacer(flex: 1),
                Expanded(
                  flex: 3,
                  child: Text("Düzenle", style: style),
                ),
              ],
            ),
          ),
          content: ListView(
            shrinkWrap: false,
            children: [
              Container(
                width: Get.context!.width < 720 ? 720 : Get.context!.width,
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
                            flex: 3,
                            child: Text(e['g_grubu']),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 3,
                            child: Text(e['g_adi']),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 3,
                            child: Text(e['aciklama']),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 3,
                            child: Container(
                                color: Colors.green,
                                child: Center(child: Text(e['tutar']))),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 3,
                            child: Text(e['tarih']),
                          ),
                          Spacer(flex: 1),
                          Expanded(
                            flex: 3,
                            child: Text(e['fatura_no']),
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
    return GetBuilder<FixturesController>(
        builder:((_){
          return ListView(
            shrinkWrap: false,
            children: [
              Stepper(physics: NeverScrollableScrollPhysics(),controlsBuilder: (BuildContext context, ControlsDetails controls) {
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
              },currentStep: _.currentStep,
                  onStepTapped: _.onStepTapped,
                  onStepCancel: _.onStepCancel,
                  onStepContinue: _.onStepContinue, steps: [buildFirstStep(),buildSecondStep(),buildThirdStep()]),
            ],
          );
        })
    );
  }

  final types=[{'value':'garden','text':'Bahçe Gereçleri'},{'value':'security','text':'Güvenlik Gereçleri'}];

  buildFirstStep(){
    return Step(title:Text('Fatura Tanımı'), content:Form(
      key: controller.formKeys[0],
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildInput(cont: controller.billController,label: 'Fatura No'),
            SizedBox(height: 8,),
            buildDropDown(controller.type, types, controller.changeType,"Gider Tanımı Seçiniz",isExpanded: true),
            SizedBox(height:8),
            buildInput(cont: controller.descriptionController,label: 'Tanım'),
            SizedBox(height: 8,),
            buildInput(cont: controller.statementController,label: 'Açıklama'),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),isActive: controller.currentStep >= 0,
      state:
      controller.currentStep > 0 ? StepState.complete : StepState.indexed,);
  }

  final firms=[{'value':'buski','text':'BUSKI'},{'value':'uedas','text':'UEDAS'}];

  buildSecondStep(){
    return Step(title:Text('Firma Bilgileri'), content:Form(
      key: controller.formKeys[1],
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildDropDown(controller.firm, firms, controller.changeFirm, "firm_choose",isExpanded: true),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),isActive: controller.currentStep >= 1,
      state:
      controller.currentStep > 1 ? StepState.complete : StepState.indexed,);
  }

  final units=[{'value':'lt','text':'Litre'},{'value':'kg','text':'Kilogram'}];
  buildThirdStep(){
    return Step(title:Text('Work Information'), content:Form(
      key: controller.formKeys[2],
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(flex: 7,child: buildInput(cont:controller.quantityController,label: 'Miktar',keyboard: TextInputType.number)),
                Spacer(flex: 1,),
                Expanded(flex: 7,child: buildDropDown(controller.unit, units, controller.changeUnit, "Birim Seçiniz",isExpanded: true)),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(flex: 7,child: buildInput(cont:controller.kdvController,label: 'Kdv',keyboard: TextInputType.number)),
                Spacer(flex: 1,),
                Expanded(flex: 7,child: buildInput(cont:controller.priceController,label: 'Fiyat',keyboard: TextInputType.number)),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(flex: 7,child: buildInput(cont:controller.costController,label: 'Tutar',keyboard: TextInputType.number)),
                Spacer(flex: 1,),
                Expanded(flex: 7,child:  Stack(
                  children: [
                    buildInput(cont:controller.dateController,label:'Tarih',readOnly: true),
                    Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                      await controller.pickDate(controller.date, controller.dateController, DateTime.now(), DateTime(DateTime.now().year-1), DateTime(DateTime.now().year+1));
                    },
                      icon:Icon(Icons.today),)),
                  ],
                )),
              ],
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    ),isActive: controller.currentStep >= 2,
      state:
      controller.currentStep > 2 ? StepState.complete : StepState.indexed,);
  }
  
}
