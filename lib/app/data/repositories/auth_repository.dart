import 'package:balatlife/app/data/providers/auth_api.dart';
import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../models/register_model.dart';
import '../models/user.dart';

class AuthRepository{
  final AuthApiClient authClient;
  AuthRepository({required this.authClient});

  login(String mail,String password)async{
     await authClient.login(mail,password).then((user){UserRepository.instance.user=user;});
  }
  register(RegisterModel register)async{
    await authClient.register(register).then((user){UserRepository.instance.user=user;});
  }
  logout(){
    UserRepository.instance.removeUser();
    Get.offNamed('/login');
  }
}