import 'package:balatlife/app/controllers/current_firms_controller.dart';
import 'package:get/get.dart';

class CurrentFirmsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CurrentFirmsController());
  }

}