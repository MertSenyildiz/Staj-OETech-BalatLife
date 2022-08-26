import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:balatlife/app/controllers/purchases_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';

class PurchasesPage extends GetView<PurchasesController> {
  List<Map<String, dynamic>> data = [
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
    {
      'g_grubu': 'Test',
      'g_adi': 'Deneme',
      'f_tanimi': 'test',
      'aciklama': 'deneme',
      'tutar': '56500.15',
      'tarih': '20/11/2050',
      'fatura_no': '62828158'
    },
  ];
  List<Map<String,dynamic>> costDescriptions=[{"text":"Deneme","value":"Deneme"},];
  List<Map<String,dynamic>> companies=[{"text":"Şirket","value":"Şirket"},{"text":"Diğer Şirket","value":"Diğer Şirket"},];
  final style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white,
      overflow: TextOverflow.ellipsis);
  ScrollController controller1 = ScrollController();
  ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    List items = [buildPurchases(), buildCreate()];
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<PurchasesController>(builder: ((_) {
        return ListView(
          shrinkWrap: false,
          children: [
            items[_.currentIndex],
          ],
        );
      })),
      bottomNavigationBar: GetBuilder<PurchasesController>(builder: ((_) {
        return BottomNavigationBar(
          onTap: _.onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'purchases'.tr),
            BottomNavigationBarItem(
                icon: Icon(Icons.create), label: 'create'.tr),
          ],
          currentIndex: _.currentIndex,
        );
      })),
    );
  }

  buildPurchases() {
    return NotificationListener<ScrollNotification>(
      child: StickyHeader(
        header: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: controller1,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: Get.context!.height < 720 ? 720 : Get.context!.height,
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
        ),
        content: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: controller2,
          child: Container(
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
        ),
      ),
      onNotification: (ScrollNotification? scrollInfo) {
        controller1.jumpTo(controller2.offset);
        return true;
      },
    );
  }

  buildCreate() {
    return GetBuilder<PurchasesController>(
      builder:((_){
        return Stepper(physics: NeverScrollableScrollPhysics(),controlsBuilder: (BuildContext context, ControlsDetails controls) {
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
            onStepContinue: _.onStepContinue, steps: [buildFirstStep(),buildSecondStep(),buildThirdStep()]);
    })
    );
  }
  buildFirstStep(){
  return Step(
    title: Text("Fatura Tanımı"),
    content: Form(
      key:controller.formKeys[0],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildInput(cont: controller.billController,label:'Fatura No'),
            SizedBox(height: 8,),
            buildDropDown(controller.costDescription,costDescriptions,controller.changeCostDescription,'Choose a Cost Description',isExpanded: true),
            SizedBox(height: 8,),
            buildInput(cont: controller.costController,label:'Gider Adı'),
            SizedBox(height: 8,),
            buildInput(cont: controller.descriptionController,label: 'Açıklama',allowMultiLine: true),
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
    title:Text("Firma Bilgileri"),
    content: Form(
      key: controller.formKeys[1],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            buildDropDown(controller.company, companies, controller.changeCompany,'firm_choose',isExpanded: true),
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
      title: Text("Work Information"),
      content: Form(
        key: controller.formKeys[2],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildInput(cont:controller.priceController,label:'Cost',keyboard: TextInputType.number),
              SizedBox(height: 8,),
              Stack(
                children: [
                  buildInput(cont:controller.dateController,label:'Date',readOnly: true),
                  Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                    await controller.pickDate(controller.date, controller.dateController, DateTime.now(), DateTime(DateTime.now().year-1), DateTime.now());
                  },
                    icon:Icon(Icons.today),)),
                ],
              )
            ],
          ),
        ),
      ),
      isActive: controller.currentStep >= 2,
      state:
      controller.currentStep > 2 ? StepState.complete : StepState.indexed,
    );
  }



  Widget buildInput(
      {required TextEditingController cont,
        String? Function(String?)? val,
        bool allowMultiLine = false,
        TextInputType? keyboard,
        bool obscure = false,
        bool readOnly=false,String? label}) {
    return TextFormField(
      controller: cont,
      validator: val,
      textInputAction: TextInputAction.next,
      keyboardType: keyboard ?? TextInputType.text,
      obscureText: obscure,
      readOnly: readOnly,
      enabled: !readOnly,
      decoration: InputDecoration(
          labelText:label?.tr
      ),
      maxLines: allowMultiLine ? 2 : 1,
    );
  }

  buildDropDown(dynamic value,List<Map<String,dynamic>> list,void Function(Object?)? func,String hint,{bool isExpanded=false}){
    /*return GetBuilder<CurrentAccountsController>(builder: (_){

    });*/
    return DropdownButton(
      isExpanded: isExpanded,
      value:value?.toString(),
      items: list.map((val){
        return DropdownMenuItem<String>(
          value:val['value'].toString(),
          child:Row(
            children: [
              Text(val['text'].toString()),
            ],
          ),
        );
      }).toList(),
      hint: Text(hint.tr),
      onChanged: func,
    );
  }
}
