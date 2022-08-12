import 'package:flutter_dotenv/flutter_dotenv.dart';
class User {
  User({
    required this.id,
    required this.mail,
    required this.isim,
    required this.soyIsim,
    required this.adres,
    required this.resimYolu,
    required this.role,
    required this.telefon,
  });
  late final int id;
  late final String mail;
  late final String isim;
  late final String soyIsim;
  late final String adres;
  late final String resimYolu;
  late final String role;
  late final String telefon;

  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    mail = json['mail'];
    isim = json['isim'];
    soyIsim = json['soyIsim'];
    adres = json['adres'];
    resimYolu =json['resimYolu'].toString().contains(dotenv.env['HOST'].toString())?json['resimYolu']:dotenv.env['HOST'].toString()+json['resimYolu'];
    role = json['role'];
    telefon=json['telefon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['mail'] = mail;
    _data['isim'] = isim;
    _data['soyIsim'] = soyIsim;
    _data['adres'] = adres;
    _data['resimYolu'] = resimYolu;
    _data['role'] = role;
    _data['telefon']=telefon;
    return _data;
  }
}