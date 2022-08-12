import 'dart:io';

import '../models/user.dart';
import '../providers/user_api.dart';

class UserApiRepository{
  final UserApiClient userClient;
  UserApiRepository({required this.userClient});

  changeProfilePhoto(File? img)async{
    return await userClient.changePhoto(img!);
  }
  editProfile(File? img,User editUser)async{
    return await userClient.editProfile(img, editUser);
  }
}