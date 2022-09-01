import'package:get/get.dart';
import'package:balatlife/app/controllers/notification_controller.dart';
class NotificationBinding extends Bindings{
@override
void dependencies() {
 Get.lazyPut(() => NotificationController());
}
}