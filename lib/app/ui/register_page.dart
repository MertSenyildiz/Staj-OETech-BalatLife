import 'dart:ui';

import 'package:balatlife/app/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterPage extends GetView<RegisterController> {
  final String _backgorundImg =
      "https://projeskop.com/uploads/gallery/balat-life-gunce-dis/balat-life-gunce-dis-1.jpg";
  final buttonWidth = Get.size.width;
  @override
  Widget build(BuildContext context) {
    final _width = context.width;
    final _height = context.height;
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            _backgorundImg,
          ),
          fit: BoxFit.cover,
        )),
        child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)))),
      ),
      Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        /*drawer: Drawer(

        ),*/
        /*bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.add),label: 'Add'),
            BottomNavigationBarItem(icon:Icon(Icons.delete),label:'Delete'),
          ],
        ),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: buildForm(_width, _height),
          ),
        ),
      ),
    ]);
  }

  Widget buildForm(double width, double height) {
    return Form(
      key: controller.registerFormKey,
      child: Center(
        child: SizedBox(
          width: width * 4 / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: height / 30,
              ),
              Row(
                children: [
                  Expanded(flex: 5, child: buildText("name")),
                  Spacer(),
                  Expanded(flex: 5, child: buildText("surname")),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: buildInput(
                        cont: controller.nameController,
                        val: controller.stringValidator,
                        keyboard: TextInputType.name),
                  ),
                  Spacer(),
                  Expanded(
                      flex: 5,
                      child: buildInput(
                          cont: controller.surnameController,
                          val: controller.stringValidator,
                          keyboard: TextInputType.name)),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              buildText("address"),
              buildInput(
                  cont: controller.addressController,
                  val: controller.stringValidator,
                  allowMultiLine: true,
                  keyboard: TextInputType.multiline),
              SizedBox(
                height: height / 30,
              ),
              buildText("mail address"),
              buildInput(
                  cont: controller.emailController,
                  val: controller.mailValidator,
                  keyboard: TextInputType.emailAddress),
              SizedBox(
                height: height / 30,
              ),
              buildText("password"),
              buildInput(
                  cont: controller.passwordController,
                  val: controller.stringValidator,
                  obscure: true),
              SizedBox(
                height: height / 30,
              ),
              buildText("password again"),
              buildInput(
                  cont: controller.passwordAgainController,
                  val: controller.passwordValidator,
                  obscure: true),
              SizedBox(
                height: height / 30,
              ),
              buildText("phone"),
              buildPhoneInput(controller.phoneNumberValidator),
              SizedBox(
                height: height / 30,
              ),
              SizedBox(
                height: buttonWidth / 10,
                child: ElevatedButton(
                  onPressed: () {
                    controller.register();
                    controller.status.isLoading? Get.defaultDialog(
                      title: "signing_up".tr,
                      barrierDismissible: false,
                        content:CircularProgressIndicator(),
                    ):null;
                  },
                  child: Text('register'.tr),
                  /*style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87),
                  ),*/
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInput(
      {required TextEditingController cont,
      required String? Function(String?) val,
      bool allowMultiLine = false,
      TextInputType? keyboard,
      bool obscure = false}) {
    return TextFormField(
      controller: cont,
      validator: val,
      textInputAction: TextInputAction.next,
      keyboardType: keyboard ?? TextInputType.text,
      obscureText: obscure,
      /*decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.7),
        ),
      ),*/
      maxLines: allowMultiLine ? 2 : 1,
    );
  }

  Widget buildPhoneInput(String? Function(String?) val) {
    return Container(
      decoration: BoxDecoration(
        color: Get.isDarkMode? Theme.of(Get.context!).primaryColor:Colors.white,
        borderRadius: BorderRadius.circular(10.7),
      ),
      child: InternationalPhoneNumberInput(
        textFieldController: controller.phoneController,
        validator: val,
        countries: ['TR', 'GB'],
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.DIALOG,
        ),
        onInputChanged: (_) => {controller.number = _},
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text.tr,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
