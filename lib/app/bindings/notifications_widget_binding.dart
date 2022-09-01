import 'package:get/get.dart';

import '../controllers/notifications_widget_controller.dart';

class NotificationsWidgetBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsWidgetController(),fenix: true);
  }

}