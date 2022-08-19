import 'package:flutter/material.dart';
import'package:get/get.dart';
import'package:balatlife/app/controllers/payments_controller.dart';
class PaymentsPage extends GetView<PaymentsController>{
@override Widget
build(BuildContext context){
  return Scaffold(
    appBar: AppBar(),
    body:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
            Center(child: Text("payment_upload_page".tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),),
          SizedBox(height: 8,),
          Center(child: Text("payment_document".tr,style: TextStyle(fontWeight: FontWeight.w500,)),),
          SizedBox(height: 8,),
          Center(child: Text("payment_document_format".tr,style: TextStyle(fontWeight: FontWeight.w500,)),),
          SizedBox(height: 8,),
          Center(child: Text("payment_document_format_numeric".tr,style: TextStyle(fontWeight: FontWeight.w500,)),),
            Spacer(),
            Row(children:[Expanded(flex: 1,child: GetBuilder<PaymentsController>(builder:((_){return Center(child: Text(_.fileName!=null?"selected_file".tr+": "+_.fileName!:"",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)); })) )]),
          SizedBox(height: 8,),
          Row(
            children: [
              Spacer(flex:2),
              Expanded(flex:4,child: TextButton(onPressed: controller.uploadFile, child:Text("select_file".tr),style: TextButton.styleFrom(fixedSize:Size.fromHeight(50),backgroundColor: Colors.green,primary: Colors.white),)),
              Spacer(flex:2),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            children: [
              Spacer(flex:2),
              Expanded(flex:4,child: GetBuilder<PaymentsController>(builder: ((_){return ElevatedButton(onPressed:_.upload?(){}:null, child: Text("upload_file".tr),);}))),
              Spacer(flex:2),
            ],
          ),
          Spacer(),
        ],
      ),
    ),
  );
}
}