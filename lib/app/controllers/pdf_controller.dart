import 'package:flutter/widgets.dart';
import'package:get/get.dart';
import 'package:internet_file/internet_file.dart';
import 'package:pdfx/pdfx.dart';
class PdfPageController extends GetxController with StateMixin{
  final args=Get.parameters;
  late PdfControllerPinch pdfPinchController;
  @override
  void onInit()async {
    if(args['type']=='network'){
      pdfPinchController=PdfControllerPinch(document:PdfDocument.openData(InternetFile.get(args['url']!)));
    }else{
      pdfPinchController=PdfControllerPinch(document:PdfDocument.openAsset(args['url']!));
    }
    change(null,status: RxStatus.success());
    super.onInit();
  }
}