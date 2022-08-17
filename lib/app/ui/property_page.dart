import 'package:balatlife/app/controllers/property_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class PropertyPage extends GetView<PropertyController>{
  List<Map<String, dynamic>> data = [
  {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
    {'blok': 'A', 'daire': 1, 'muaf': false, 'metre': 150,'sayac':'5656565656'},
  ];

  List<Map<String,dynamic>> blocks=[{'value':'A','text':'A'},{'value':'B','text':'B'},];
  List<Map<String,dynamic>> apartments=[{'value':'1','text':'1'},{'value':'2','text':'2'},];

  @override
  Widget build(BuildContext context) {
    List items=[buildProperties(),buildCreate()];
    return Scaffold(
      appBar: AppBar(),
      body:GetBuilder<PropertyController>(
        builder:((_){
          return items[_.currentIndex];
        }),
      ),
      bottomNavigationBar: GetBuilder<PropertyController>(
        builder:(
            (_){
              return BottomNavigationBar(items:[
                BottomNavigationBarItem(icon:Icon(Icons.apartment),label:'properties'.tr),
                BottomNavigationBarItem(icon:Icon(Icons.create),label:'create'.tr),
              ],currentIndex: _.currentIndex,onTap: _.onItemTapped,);
            }
        )
      ),
    );
  }

  buildProperties(){
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
                        flex: 1,
                        child: Text(
                          'block_head'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'apartment_head'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          'muaf'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'area'.tr,
                          style: style,
                        )),
                    Expanded(
                        flex: 2,
                        child: Text(
                          'sayac'.tr,
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
                        Expanded(flex: 1, child: Text(e['blok'])),
                        Expanded(flex: 2, child: Text(e['daire'].toString())),
                        Expanded(flex: 1, child: Text(e['muaf'].toString())),
                        Expanded(flex: 2, child: Text(e['metre'].toString())),
                        Expanded(flex: 2, child: Text(e['sayac'])),
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

  buildCreate(){
    final style=TextStyle(fontWeight: FontWeight.bold,fontSize: 20,overflow: TextOverflow.ellipsis);
    return Form(child: ListView(
      padding: EdgeInsets.all(40),
      children: [
        GetBuilder<PropertyController>(
    builder:((_){
      return Row(
        children: [
          Expanded(flex:5,child:buildDropDown(controller.block,blocks,controller.changeBlock,'block'.tr,isExpanded: true)),
          Spacer(flex:1),
          Expanded(flex:5,child: buildDropDown(controller.apartment,apartments,controller.changeApartment,'apartment'.tr,isExpanded: true)),
        ],
      );
    }),

        ),
        SizedBox(height: 30,),
        Text('area'.tr,style: style,),
        SizedBox(height: 8,),
        buildInput(cont: controller.metreController,label:'area',keyboard:TextInputType.number ),
        SizedBox(height: 30,),
        Text('counter_no'.tr,style:style),
        SizedBox(height: 8,),
        buildInput(cont: controller.counterController,label:'counter_no',keyboard:TextInputType.number ),
        SizedBox(height: 30,),
        Text('electricity_sub'.tr,style: style,),
        SizedBox(height: 8,),
        buildInput(cont: controller.electricityController,label:'electricity_sub',keyboard:TextInputType.number ),
        SizedBox(height: 30,),
        Text('water_sub'.tr,style:style),
        SizedBox(height: 8,),
        buildInput(cont: controller.waterController,label:'water_sub',keyboard:TextInputType.number ),
        SizedBox(height: 30,),
        Text('gas_sub'.tr,style:style),
        SizedBox(height: 8,),
        buildInput(cont: controller.waterController,label:'gas_sub',keyboard:TextInputType.number ),
        SizedBox(height: 30,),
        Row(
          children: [
            GetBuilder<PropertyController>(
              builder:((_){
                return Checkbox(value: _.calc, onChanged: _.changeCalc,);
              }),
            ),
            Text('calculation_active'.tr,style:TextStyle(fontWeight: FontWeight.w400),),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            GetBuilder<PropertyController>(
              builder:((_){
                return Checkbox(value: _.terms, onChanged: _.changeTerms,);
              }),
            ),
            TextButton(onPressed: (){},child: Text('terms_of_service'.tr,)),
          ],
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed:(){}, child: Text('create'.tr))
      ],
    ));
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