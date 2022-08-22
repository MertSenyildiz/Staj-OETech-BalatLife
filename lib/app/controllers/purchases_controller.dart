import 'package:balatlife/app/mixins/pick_date_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import'package:get/get.dart';

import '../ui/ui_services/orientation_service.dart';
class PurchasesController extends GetxController with PickDateMixin{

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
  int currentIndex=0;
  onItemTapped(int index){
    currentIndex=index;
    update();
  }
  int currentStep=0;
  onStepTapped(int? step){
    if(step!=null&&step<currentStep){
      currentStep=step;
    }
    update();
  }
  onStepCancel(){
    if(currentStep>0){
      currentStep--;
    }
    update();
  }
  onStepContinue(){
    if(currentStep<2){
      currentStep++;
    }
    update();
  }

  List formKeys=[GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>()];
  //First Stepper
  final billController = TextEditingController();
  String? costDescription;
  final costController = TextEditingController();
  final descriptionController = TextEditingController();

  void changeCostDescription(Object? value){
    costDescription=value!.toString();
    update();
  }

  //Second Stepper
  String? company;
  void changeCompany(Object? value){
    company=value!.toString();
    update();
  }

  //Third Stepper
  final priceController=TextEditingController();
  DateTime? date;
  final dateController =TextEditingController();
  pickDate(DateTime? date,TextEditingController cont,DateTime initial,DateTime first,DateTime last)async{
    await datePicker(date, cont, initial, first, last);
  }
}