import 'package:balatlife/app/data/providers/auth_api.dart';
import 'package:balatlife/app/data/repositories/auth_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:http/http.dart' as http;
import '../controllers/login_controller.dart';
import '../controllers/register_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}