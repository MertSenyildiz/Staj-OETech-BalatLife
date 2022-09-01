import 'package:flutter/material.dart';
import'package:get/get.dart';
class AnnouncementController extends GetxController{
  final headerController = TextEditingController();
  final contentController=TextEditingController();

  final blocks=[{'value':'all','text':'All'},{'value':'A','text':'A'},{'value':'B','text':'B'},];
  final apartments=[{'value':'all','text':'All'},{'value':'1','text':'1'},{'value':'2','text':'2'},];

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
}