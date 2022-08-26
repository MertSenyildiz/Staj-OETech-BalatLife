import'package:get/get.dart';
import'package:balatlife/app/controllers/fixtures_controller.dart';
class FixturesBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => FixturesController());
}
}