import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CurrentAccountsController extends GetxController{
  List formKeys=[GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>(),GlobalKey<FormState>()];
  //First Stepper
  final nameController=TextEditingController();
  final surnameController=TextEditingController();
  final mailController=TextEditingController();
  final identityController=TextEditingController();
  final phoneController=TextEditingController();
  PhoneNumber number = PhoneNumber();
  bool userStatus = true;
  bool permissionStatus=false;
  String? ownerShip;
  List<Map<String,String>> ownership=[{'value':'landlord','text':"landlord".tr},{'value':'tenant','text':"tenant".tr},{'value':'other','text':"other".tr}];
  String? block;
  List<Map<String,String>> blocks=[{'value':'A','text':"A"},{'value':'B','text':"B"},{'value':'C','text':"C"}];
  int? apartment;
  List<Map<String,dynamic>> apartments=[{'value':1,'text':"1"},{'value':2,'text':"2"},{'value':3,'text':"3"}];

  //SecondStepper
  final areaController =TextEditingController();
  final landshareController =TextEditingController();
  final firstplateController =TextEditingController();
  final secondplateController =TextEditingController();
  final thirdplateController =TextEditingController();
  final fourthlateController =TextEditingController();

  //ThirdStepper
  DateTime? birth;
  DateTime? marriage;
  final birthController=TextEditingController();
  final marriageController=TextEditingController();
  final emergencyContactController=TextEditingController();
  final emergencyContactPhoneController=TextEditingController();
  PhoneNumber emergencyContactPhone = PhoneNumber();

  //FourthStepper
  DateTime? entry;
  DateTime? checkout;
  final entryController=TextEditingController();
  final checkoutController=TextEditingController();



  int currentIndex=0;
  int stepperIndex=0;
  onItemTapped(int index){
    currentIndex=index;
    update();
  }
  onStepTapped(int step){
    if(step<stepperIndex){
      stepperIndex=step;
    }
    update();
  }
  onStepCancel(){
    if(stepperIndex>0){
      stepperIndex--;
    }
    update();
  }
  String? validateFirst(String? input){
   if(input!=null&&input.length>1){
     return null;
   }
     return null;
  }
  onStepContinue(){
    if(stepperIndex<3&& formKeys[stepperIndex].currentState.validate()){
      stepperIndex++;
    }
    update();
  }

  pickDate(DateTime? date,TextEditingController cont,DateTime inital,DateTime first,DateTime last)async{
    final pick = await showDatePicker(
      context: Get.context!,
      initialDate:inital,
      firstDate:first,
      lastDate:last,
    );
    if(pick!=null){
      cont.text=pick.day.toString()+'/'+pick.month.toString()+'/'+pick.year.toString();
    }
    else{
      return;
    }
  }
  changeUserStatus(bool? x){
    userStatus=!userStatus;
    update();
  }
  changePermissionStatus(bool? x){
    permissionStatus=!permissionStatus;
    update();
  }

  void changeOwnership(Object? value){
    ownerShip=value!.toString();
    update();
  }
  void changeBlock(Object? value){
    block=value!.toString();
    update();
  }
  void changeApartment(Object? value){
    apartment=int.parse(value!.toString());
    update();
  }
}