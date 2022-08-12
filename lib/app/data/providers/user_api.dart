import 'dart:convert';
import 'dart:io';

import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as p;
import '../models/register_model.dart';
import '../models/user.dart';

const baseUrl='http://127.0.0.1:8080/api/user/';

class UserApiClient{
  final http.Client httpClient;
  UserApiClient({required this.httpClient});

  Future<Object?> changePhoto(File img)async{
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl+'changeProfile'));
    request.files.add(http.MultipartFile('images',img.readAsBytes().asStream(),img.lengthSync(),filename: img.path.split("/").last,contentType: MediaType('image',p.extension(img.path))));
    request.fields['id']=UserRepository.instance.user!.id.toString();
    request.fields['mail']=UserRepository.instance.user!.mail;
    final response =await request.send();
    if(response.statusCode==200){
      final usr=response.stream.transform(utf8.decoder)
          .transform(json.decoder)
          .first;
      return Future.value(usr);
    }else{
      return Future.value(null);
    }
  }

  Future<Object?> editProfile(File? img,User editUser)async{
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl+'changeProfile'));
    if(img!=null){
      request.files.add(http.MultipartFile('images',img.readAsBytes().asStream(),img.lengthSync(),filename: img.path.split("/").last,contentType: MediaType('image',p.extension(img.path))));
    }
    request.fields['id']=editUser.id.toString();
    request.fields['mail']=editUser.mail;
    request.fields['isim']=editUser.isim;
    request.fields['soyIsim']=editUser.soyIsim;
    request.fields['adres']=editUser.adres;
    request.fields['telefon']=editUser.telefon;
    final response =await request.send();
    if(response.statusCode==200){
      final usr=response.stream.transform(utf8.decoder)
          .transform(json.decoder)
          .first;
      return Future.value(usr);
    }else{
      return Future.value(null);
    }
  }
}