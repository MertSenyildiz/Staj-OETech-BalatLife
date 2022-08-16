import 'package:get/get.dart';

import '../controllers/current_accounts_controller.dart';

class CurrentAccountsBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => CurrentAccountsController(),fenix: true);
  }

}