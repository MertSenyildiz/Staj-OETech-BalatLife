import 'package:balatlife/app/mixins/pick_date_mixin.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import'package:get/get.dart';

import '../ui/ui_services/orientation_service.dart';
class DuesController extends GetxController with PickDateMixin {

  final dateController=TextEditingController();
  int currentIndex=0;
  onItemTapped(int? val){
    currentIndex=val!;
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

  //First Step
  String? block;
  String? apartment;
  changeBlock(Object? object){
    block=object.toString();
    update();
  }
  changeApartment(Object? object){
    apartment=object.toString();
    update();
  }


  //Second Step
  DateTime? date;
  pickDate(DateTime? date,TextEditingController cont,DateTime initial,DateTime first,DateTime last)async{
    date=await datePicker(date, cont, initial, first, last,justMonth: true,selectableDays:(val)=>val.day==1?true:false);
    if(date!=null){
      this.date=date;
    }
  }


  //Third Stepper
  final duesController=TextEditingController();
  final electricityController=TextEditingController();
  final waterController=TextEditingController();
  final hotWaterController=TextEditingController();
  final heatingController=TextEditingController();
  final elevatorController=TextEditingController();
  final poolController=TextEditingController();
  final gardenController=TextEditingController();
  final securityController=TextEditingController();
  final otherController=TextEditingController();
  final addOneController=TextEditingController();
  final addTwoController=TextEditingController();
  final totalCostController=TextEditingController();


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