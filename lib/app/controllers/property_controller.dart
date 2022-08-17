import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../ui/ui_services/orientation_service.dart';

class PropertyController extends GetxController{
  @override
  void onInit() {
    OrientationService.instance.addOrientation(DeviceOrientation.landscapeLeft);
    OrientationService.instance.addOrientation(DeviceOrientation.landscapeRight);
    OrientationService.instance.applyOrientation();
    super.onInit();
  }
  @override
  void onClose() {
    OrientationService.instance.refactor();
    OrientationService.instance.applyOrientation();
    super.onClose();
  }
  final formKey=GlobalKey<FormState>();
  final metreController=TextEditingController();
  final counterController=TextEditingController();
  final electricityController=TextEditingController();
  final waterController=TextEditingController();
  final gasController=TextEditingController();

  bool calc=true;
  bool terms=false;
  String? block;
  String? apartment;

  int currentIndex=0;
  onItemTapped(int index){
    currentIndex=index;
    update();
  }

  void changeBlock(Object? value){
    block=value!.toString();
    update();
  }
  void changeApartment(Object? value){
    apartment=value!.toString();
    update();
  }

  void changeCalc(bool? x){
    calc=!calc;
    update();
  }
  void changeTerms(bool? x){
    terms=!terms;
    update();
  }
}