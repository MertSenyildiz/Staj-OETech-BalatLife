import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

mixin FormTextInputMixin{
  Widget buildInput(
      {required TextEditingController cont,
        String? Function(String?)? val,
        bool allowMultiLine = false,
        TextInputType? keyboard,
        bool obscure = false,
        bool readOnly=false,String? label}) {
    return TextFormField(
      controller: cont,
      validator: val,
      textInputAction: TextInputAction.next,
      keyboardType: keyboard ?? TextInputType.text,
      obscureText: obscure,
      readOnly: readOnly,
      enabled: !readOnly,
      decoration: InputDecoration(
          labelText:label?.tr
      ),
      maxLines: allowMultiLine ? 2 : 1,
    );
  }
}