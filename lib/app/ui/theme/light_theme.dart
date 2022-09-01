import 'package:flutter/material.dart';

final ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(fixedSize:Size.fromHeight(50),primary: Colors.blue),
  ),
  dialogBackgroundColor: Color.fromARGB(185,10, 167, 240),
  dialogTheme: DialogTheme(
    titleTextStyle: TextStyle(
      color:Colors.black,
      fontSize: 25,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.blue,
  ),
  toggleableActiveColor: Colors.blue,
);

final Map<String,Color> light={
  'login_container':Colors.white,
  'login_checkbox':Colors.blue,
};