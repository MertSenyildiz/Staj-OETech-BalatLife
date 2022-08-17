import 'package:balatlife/app/controllers/property_controller.dart';
import 'package:get/get.dart';

class PropertyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PropertyController());
  }

}