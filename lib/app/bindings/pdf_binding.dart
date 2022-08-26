import'package:get/get.dart';
import'package:balatlife/app/controllers/pdf_controller.dart';
class PdfBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => PdfPageController());
}
}