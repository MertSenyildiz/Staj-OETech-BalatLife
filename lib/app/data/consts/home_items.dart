import 'package:flutter/material.dart';

const List<Map<String,dynamic>> dashboardRuleItems=[
  {'title':'Yönetim Planı','color':Colors.green,'url':'assets/pdfs/yonetim_plani.pdf','type':'asset'},
  {'title':'Blatlife Yaşam Kuralları','color':Colors.black,'url':'','type':'asset'},
  {'title':'Katmülkiyet Kanunu','color':Colors.yellow,'url':'https://www.mevzuat.gov.tr/MevzuatMetin/1.5.634.pdf','type':'network'},
];

const List<Map<String,dynamic>> dashboardCostItems=[
  {'title':'Tahakkuk Edilen','color':Colors.green},
  {'title':'Ödemeler','color':Colors.black},
  {'title':'Bakiye Borç','color':Colors.yellow},
  {'title':'Aylık Genel Gider','color':Colors.grey},
];

const List<Map<String,dynamic>> dashboardGraphsItems=[
  {'title':'Demirbaş Giderleri','color':Colors.green},
  {'title':'Daire Doğalgaz Kullanım Grafiği','color':Colors.black},
  {'title':'Blok Doğalgaz Kullanım Grafiği','color':Colors.yellow},
  {'title':'Isınma ve Sıcak Su Paylaşım Hesabı','color':Colors.grey},
];

const List<Map<String,dynamic>> dashboardMesssageItems=[
  {'title':'Yönetim Bildirimleri','color':Colors.green},
  {'title':'Mesajlar','color':Colors.black},
  {'title':'Haberler','color':Colors.yellow},
];