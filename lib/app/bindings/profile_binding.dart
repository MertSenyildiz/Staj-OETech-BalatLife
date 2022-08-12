import 'package:balatlife/app/controllers/profile_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>ProfileController(),fenix: true);
  }

}