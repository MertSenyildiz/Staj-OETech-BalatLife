import'package:get/get.dart';
import'package:balatlife/app/controllers/payments_controller.dart';

class PaymentsBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => PaymentsController());
}
}