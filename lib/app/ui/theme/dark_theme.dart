import 'package:flutter/material.dart';

final ThemeData darkTheme=ThemeData(
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(fixedSize:Size.fromHeight(50),primary: Colors.black),
  ),
 dialogBackgroundColor: Color.fromARGB(185,10, 86, 240),
  dialogTheme: DialogTheme(
    elevation: 5,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
  ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.black38,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      focusColor: Colors.grey
    ),
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.blue,
  ),
  toggleableActiveColor: Colors.blue,
);

final Map<String,Color> light={
  'login_container':Colors.black,
  'login_checkbox_':Colors.blueAccent,
};