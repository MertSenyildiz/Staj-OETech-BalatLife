import'package:get/get.dart';
import'package:balatlife/app/controllers/purchases_controller.dart';
class PurchasesBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => PurchasesController());
}
}