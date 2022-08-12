import 'package:balatlife/app/data/providers/auth_api.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../data/providers/user_api.dart';
import '../data/repositories/auth_repository.dart';
import '../data/repositories/user_api_repository.dart';

class ServiceDep extends Bindings{
  @override
  Future<void> dependencies()async {
   await Get.putAsync(()=>SharedPreferences.getInstance(),permanent: true);
   Get.lazyPut(()=>AuthRepository(authClient: AuthApiClient(httpClient: http.Client())),fenix: true);
   Get.lazyPut(()=>UserApiRepository(userClient: UserApiClient(httpClient: http.Client())),fenix: true);
  }

}