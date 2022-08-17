import 'package:balatlife/app/ui/ui_services/orientation_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CurrentFirmsController extends GetxController{
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
  List formKeys=[GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>()];
  int currentIndex=0;
  int currentStep=0;

  //FirstStepper
  final firmaController=TextEditingController();

  //SecondStepper
  final vergiDairesiController=TextEditingController();
  final vergiNoController=TextEditingController();

  //ThirdStepper
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  PhoneNumber number=PhoneNumber();
  final mailController=TextEditingController();
  final ibanController=TextEditingController();
  final bankController =TextEditingController();
  final accountController=TextEditingController();
  final noteController=TextEditingController();

  onItemTapped(int index){
    currentIndex=index;
    update();
  }
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
}