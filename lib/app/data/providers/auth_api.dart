import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/register_model.dart';
import '../models/user.dart';

const baseUrl='http://127.0.0.1:8080/api/auth/';

class AuthApiClient{
  final http.Client httpClient;
  AuthApiClient({required this.httpClient});

  Future<User?> login(String mail,String password) async{
      final response=await http.post(Uri.parse(baseUrl+'login'),body:{'mail':mail,'password':password});
      if(response.statusCode==200){
        User user =  User.fromJson(jsonDecode(response.body));
        return Future.value(user);
      }else{
        return Future.value(null);
      }
  }
  Future<User?> register(RegisterModel register) async{
    final response = await http.post(Uri.parse(baseUrl+'createUser'),body:register.toJson());
    if(response.statusCode==200){
      User user =  User.fromJson(jsonDecode(response.body));
      return Future.value(user);
    }else{
      Future.value(null);
    }
  }
}