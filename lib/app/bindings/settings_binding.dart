import 'package:balatlife/app/controllers/settings_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class SettingsBinding implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut(()=>SettingsController());
  }}