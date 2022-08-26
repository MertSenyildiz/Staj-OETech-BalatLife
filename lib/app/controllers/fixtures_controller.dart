import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'package:get/get.dart';

import '../mixins/pick_date_mixin.dart';
import '../ui/ui_services/orientation_service.dart';
class FixturesController extends GetxController with PickDateMixin{
  int currentIndex=0;
  onItemTapped(int value){
    currentIndex=value;
    update();
  }
  //Stepper props
  final formKeys=[GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>()];
  int currentStep=0;
  onStepTapped(int step){
    if(step <currentStep&&currentStep>0){
      currentStep=step;
      update();
    }
  }
  onStepCancel(){
    if(currentStep>0){
      currentStep--;
      update();
    }
  }

  onStepContinue(){
    if(currentStep<2){
      currentStep++;
      update();
    }
  }

  //First Stepper
  final billController = TextEditingController();
  final descriptionController = TextEditingController();
  final statementController = TextEditingController();
  String? type;
  changeType(Object? object){
    type=object!.toString();
    update();
  }

  //Second Stepper
  String? firm;
  changeFirm(Object? object){
    firm=object!.toString();
    update();
  }


  //Third Stepper
  final quantityController=TextEditingController();
  final kdvController=TextEditingController();
  final priceController=TextEditingController();
  final costController=TextEditingController();

  String? unit;
  changeUnit(Object? object){
    unit=object!.toString();
    update();
  }
  final dateController=TextEditingController();
  DateTime? date;
  pickDate(DateTime? date,TextEditingController cont,DateTime initial,DateTime first,DateTime last)async{
    await datePicker(date, cont, initial, first, last);
  }

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
}