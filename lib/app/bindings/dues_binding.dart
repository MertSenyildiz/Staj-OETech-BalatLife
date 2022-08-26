import'package:get/get.dart';
import'package:balatlife/app/controllers/dues_controller.dart';
class DuesBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => DuesController());
}
}