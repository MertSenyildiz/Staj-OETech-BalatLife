import 'package:flutter/material.dart';
import'package:get/get.dart';
import'package:balatlife/app/controllers/pdf_controller.dart';
import 'package:pdfx/pdfx.dart';
class PdfPage extends GetView<PdfPageController>{
@override Widget
build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: Text(controller.args['url']!.split('/').last),
  ),
  body:GetBuilder<PdfPageController>(
    builder:((_){
      return Center(
        child:Center(child:_.status.isLoading?CircularProgressIndicator():PdfViewPinch(
          controller: _.pdfPinchController,
        )),
      );
    }),
  ),
);
}
}