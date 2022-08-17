import 'package:balatlife/app/controllers/current_accounts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';


//TODO:DROPDOWN EKLENECEK
class CurrentAccountsPage extends GetView<CurrentAccountsController> {
  List<Map<String, dynamic>> data = [
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
    {'isim': 'Deneme', 'Mülkiyet': 'Sahibi', 'Blok': 'A', 'Daire': '1'},
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      buildAccounts(),
      buildCreateForm(),
    ];
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: GetBuilder<CurrentAccountsController>(
        builder: ((_) {
          return items.elementAt(_.currentIndex);
        }),
      ),
      bottomNavigationBar: GetBuilder<CurrentAccountsController>(
        builder: ((_) {
          return BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.contacts),
                label: 'accounts'.tr,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.create),
                label: 'create'.tr,
              ),
            ],
            currentIndex: _.currentIndex,
            onTap: _.onItemTapped,
          );
        }),
      ),
    );
  }

  Widget buildAccounts() {
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
                          'name'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'ownership_head'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'block_head'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'apartment_head'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
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
                        Expanded(flex: 3, child: Text(e['isim'])),
                        Expanded(flex: 2, child: Text(e['Mülkiyet'])),
                        Expanded(flex: 1, child: Text(e['Blok'])),
                        Expanded(flex: 1, child: Text(e['Daire'])),
                        Expanded(
                            flex: 2,
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
      children:[GetBuilder<CurrentAccountsController>(
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
            currentStep: _.stepperIndex,
            onStepTapped: _.onStepTapped,
            onStepCancel: _.onStepCancel,
            onStepContinue: _.onStepContinue,
            steps: [
              buildFirstStep(),
              buildSecondStep(),
              buildThirdStep(),
              buildFourthStep(),
            ],
          );
        },
      ),]
    );
  }

  buildFirstStep() {
    return Step(
      title: Text("Gerekli Bilgiler"),
      content: Form(key:controller.formKeys[0],child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(flex: 4,child: buildInput(cont:controller.nameController,val: controller.validateFirst,label:'name')),
                Spacer(),
                Expanded(flex:4,child: buildInput(cont:controller.surnameController,val: controller.validateFirst,label:'surname')),
              ],
            ),
            SizedBox(height: 8,),
            buildInput(cont:controller.mailController,val: controller.validateFirst,label:'mail address',keyboard:TextInputType.emailAddress ),
            SizedBox(height: 8,),
            buildInput(cont:controller.identityController,val: controller.validateFirst,label:'identity number',keyboard:TextInputType.number ),
            SizedBox(height: 8,),
            buildPhoneInput(controller.phoneController,controller.number),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(flex:4,child: buildDropDown(controller.block,controller.blocks,controller.changeApartment,'block',isExpanded: true), ),
                Spacer(),
                Expanded(flex:4,child: buildDropDown(controller.apartment,controller.apartments,controller.changeApartment,'apartment',isExpanded: true), ),
              ],
            ),
            SizedBox(height: 8,),
            buildDropDown(controller.ownerShip,controller.ownership,controller.changeOwnership,'ownership',isExpanded: true),
            SizedBox(height: 8,),
            Row(
              children: [
                Checkbox(value: controller.userStatus, onChanged:controller.changeUserStatus),
                Text("user_status".tr),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Checkbox(value: controller.permissionStatus, onChanged:controller.changePermissionStatus),
                Text("permission_status".tr),
              ],
            ),
          ],
        ),
      )),
      isActive: controller.stepperIndex >= 0,
      state:
          controller.stepperIndex > 0 ? StepState.complete : StepState.indexed,
    );
  }

  buildSecondStep() {
    return Step(
      title: Text("Detay Tanımları"),
      content: Form(
        key: controller.formKeys[1],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex: 4,child: buildInput(cont:controller. areaController,val: controller.validateFirst,label:'area',keyboard:TextInputType.number)),
                  Spacer(),
                  Expanded(flex:4,child: buildInput(cont:controller.landshareController,val: controller.validateFirst,label:'land_share',keyboard:TextInputType.number)),
                ],
              ),
              SizedBox(height: 8,),
              buildInput(cont:controller.firstplateController,val: controller.validateFirst,label:'plate',),
              SizedBox(height: 8,),
              buildInput(cont:controller.secondplateController,val: controller.validateFirst,label:'plate',),
              SizedBox(height: 8,),
              buildInput(cont:controller.thirdplateController,val: controller.validateFirst,label:'plate',),
              SizedBox(height: 8,),
              buildInput(cont:controller.fourthlateController,val: controller.validateFirst,label:'plate',),
            ],
          ),
        ),
      ),
      isActive: controller.stepperIndex >= 1,
      state:
          controller.stepperIndex > 1 ? StepState.complete : StepState.indexed,
    );
  }

  buildThirdStep() {
    return Step(
      title: Text("Özel Tanımlar"),
      content: Form(
        key: controller.formKeys[2],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex:7,child: Stack(
                    children: [
                      buildInput(cont:controller.birthController,val: controller.validateFirst,label:'birth_date',readOnly: true),
                      Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                        await controller.pickDate(controller.birth, controller.birthController, DateTime(1980), DateTime(1920), DateTime.now());
                      },
                        icon:Icon(Icons.today),)),
                    ],
                  )),
                  Spacer(),
                  Expanded(flex:7,child: Stack(
                    children: [
                      buildInput(cont:controller.marriageController,val: controller.validateFirst,label:'marriage_date',readOnly: true),
                      Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                        await controller.pickDate(controller.marriage, controller.marriageController, DateTime(2010), DateTime(1950), DateTime(DateTime.now().year+1));
                      },icon:Icon(Icons.today),)),
                    ],
                  )),
                ],
              ),
              SizedBox(height: 8,),
              buildInput(cont:controller.emergencyContactController,val: controller.validateFirst,label:'emergency_contact_person',),
              SizedBox(height: 8,),
              buildPhoneInput(controller.emergencyContactPhoneController,controller.emergencyContactPhone),
            ],
          ),
        ),
      ),
      isActive: controller.stepperIndex >= 2,
      state:
          controller.stepperIndex > 2 ? StepState.complete : StepState.indexed,
    );
  }

  buildFourthStep() {
    return Step(
      title: Text("Oturma Bilgileri"),
      content:  Form(
        key: controller.formKeys[3],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex:7,child: Stack(
                    children: [
                      buildInput(cont:controller.entryController,val: controller.validateFirst,label:'entry_date',readOnly: true),
                      Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                        await controller.pickDate(controller.entry, controller.entryController, DateTime.now(), DateTime(DateTime.now().year-1), DateTime(DateTime.now().year+1));
                      },
                        icon:Icon(Icons.today),)),
                    ],
                  )),
                  Spacer(),
                  Expanded(flex:7,child: Stack(
                    children: [
                      buildInput(cont:controller.checkoutController,val: controller.validateFirst,label:'checkout_date',readOnly: true),
                      Positioned(top:5,right:0,child: IconButton(onPressed: ()async{
                        await controller.pickDate(controller.checkout, controller.checkoutController, DateTime.now(), DateTime(DateTime.now().year-1), DateTime(DateTime.now().year+1));
                      },icon:Icon(Icons.today),)),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
      isActive: controller.stepperIndex >= 3,
      state:
          controller.stepperIndex > 3 ? StepState.complete : StepState.indexed,
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
