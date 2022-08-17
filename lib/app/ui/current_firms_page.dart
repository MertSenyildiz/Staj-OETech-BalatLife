import 'package:balatlife/app/controllers/current_firms_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class CurrentFirmsPage extends GetView<CurrentFirmsController>{
  List<Map<String, dynamic>> data = [
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':false},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':false},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':false},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '1','durum':true},
    {'firma': 'Deneme', 'yetkili': 'Deneme', 'mail': '@deneme', 'telefon': '15615164123388813','durum':true},
  ];
  @override
  Widget build(BuildContext context) {
    List items=[buildFirms(),buildCreateForm()];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<CurrentFirmsController>(
        builder: ((_){
          return items[_.currentIndex];
        }),
      ),
      bottomNavigationBar: GetBuilder<CurrentFirmsController>(
        builder:((_){
          return  BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_work),label:"firms".tr),
              BottomNavigationBarItem(icon: Icon(Icons.create),label:'create'.tr),
            ],
            currentIndex: _.currentIndex,
            onTap: _.onItemTapped,
          );
        }
        ),

      ),
    );
  }

  buildFirms(){
    final style = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,color: Colors.white);
    return GestureDetector(
        onDoubleTap: () {
          controller.onItemTapped(1);
        },
        child: ListView(
          shrinkWrap: false,
          children: [
            StickyHeader(
              header: Container(
                height: 75,
                width: double.infinity,
                color: Theme.of(Get.context!).primaryColor,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                          'firm'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'Yetkili'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'mail'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'phone'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'status'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 1,
                        child: Center(
                            child: Text(
                              'edit'.tr,
                              style: style,
                            )))
                  ],
                ),
              ),
              content: Column(
                children: [...data.map(
                      (e) => Container(
                    width: double.infinity,
                    height: 75,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Theme.of(Get.context!).primaryColor,
                              width: 2)),
                    ),
                    child: Row(
                      children: [
                        Expanded(flex: 3, child: Text(e['firma'])),
                        Expanded(flex: 2, child: Text(e['yetkili'])),
                        Expanded(flex: 2, child: Text(e['mail'])),
                        Expanded(flex: 2, child: Text(e['telefon'])),
                        Expanded(flex: 2, child: TextButton(
                          style: TextButton.styleFrom(backgroundColor:e['durum']?Colors.green:Colors.red),
                          child: Text(e['durum']?'Active':'Passive',style:TextStyle(color:Colors.white)),
                          onPressed: (){},
                        )),
                        Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                controller.onItemTapped(1);
                              },
                            ))
                      ],
                    ),
                  ),
                ),],
              ),
            ),

          ],
        ));
  }
  buildCreateForm() {
    return ListView(
        shrinkWrap: false,
        children:[GetBuilder<CurrentFirmsController>(
          builder: (_) {
            return Stepper(
              physics: NeverScrollableScrollPhysics(),
              controlsBuilder: (BuildContext context, ControlsDetails controls) {
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
              currentStep: _.currentStep,
              onStepTapped: _.onStepTapped,
              onStepCancel: _.onStepCancel,
              onStepContinue: _.onStepContinue,
              steps: [
                buildFirstStep(),
                buildSecondStep(),
                buildThirdStep(),
              ],
            );
          },
        ),]
    );
  }
  buildFirstStep(){
    return Step(
      title:Text("Firma Tanımı"),
      content: Form(
        key:controller.formKeys[0],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children:[buildInput(cont:controller.firmaController,label: 'firm'),
                SizedBox(height: 8,),
                Row(children: [Text('Muhasebe Kodu:'),Text('0')],),
              ],
          ),
        ),
      ),
      isActive: controller.currentStep>=0,
      state: controller.currentStep >0?StepState.complete : StepState.indexed,
    );
  }

  buildSecondStep(){
    return Step(
      title:Text('firma Bilgileri'),
      content: Form(
        key: controller.formKeys[1],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildInput(cont: controller.vergiDairesiController,label: 'Vergi Dairesi'),
              SizedBox(height: 8,),
              buildInput(cont: controller.vergiNoController,keyboard: TextInputType.number,label: 'Vergi No'),
            ],
          ),
        ),
      ),
      isActive: controller.currentStep>=1,
      state: controller.currentStep >1?StepState.complete : StepState.indexed,
    );
  }

  buildThirdStep(){
    return Step(
      title: Text('Work Information'),
      content: Form(
        key:controller.formKeys[2],
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
              children: [
                buildInput(cont: controller.nameController,label: 'name'),
                SizedBox(height: 8,),
                buildPhoneInput(controller.phoneController,controller.number),
                SizedBox(height: 8,),
                buildInput(cont: controller.mailController,label: 'mail',keyboard: TextInputType.emailAddress),
                SizedBox(height: 8,),
                buildInput(cont: controller.ibanController,label: 'iban'),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Expanded(flex:5,child:buildInput(cont: controller.bankController,label: 'bank')),
                    Spacer(flex: 1,),
                    Expanded(flex: 5,child:buildInput(cont: controller.accountController,label: 'hesap adı',)),
                  ],
                ),
                SizedBox(height: 8,),
                buildInput(cont: controller.noteController,label: 'note',allowMultiLine: true),
              ],
          ),
        ),
      ),
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
  buildPhoneInput(TextEditingController cont,PhoneNumber number){
    return InternationalPhoneNumberInput(
      textFieldController: cont,
      validator: null,
      countries: ['TR', 'GB'],
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
      ),
      onInputChanged: (_) => {number = _},
    );
  }
}