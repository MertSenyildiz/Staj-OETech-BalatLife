import 'package:flutter/services.dart';

class OrientationService{
  List<DeviceOrientation> orientations=[DeviceOrientation.portraitUp];

  OrientationService._(){}
  static OrientationService _instance = OrientationService._();
  factory OrientationService()=> _instance;
  static OrientationService get instance => _instance;

  applyOrientation(){
    SystemChrome.setPreferredOrientations(orientations);
  }

  refactor(){
    orientations=[DeviceOrientation.portraitUp];
  }

  deleteOrientation(DeviceOrientation orientation){
    orientations.removeWhere((element) => orientation==element);
    if(orientations.isEmpty){
      orientations.add(DeviceOrientation.portraitUp);
    }
  }
  addOrientation(DeviceOrientation orientation){
    final status=orientations.contains(orientation);
    if(!status){
        orientations.add(orientation);
    }
  }
}