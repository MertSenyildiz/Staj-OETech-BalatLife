import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../data/repositories/lang_repository.dart';

class LoginPage extends GetView<LoginController> {
  final String _backgorundImg =
      "https://projeskop.com/uploads/gallery/balat-life-gunce-dis/balat-life-gunce-dis-1.jpg";//"https://media.istockphoto.com/videos/colored-smoke-on-a-dark-background-blue-and-red-light-with-smoke-video-id1341408852?b=1&k=20&m=1341408852&s=640x640&h=C6ymXpr_Jn6-WqQmHHuS8z6TGBtkWDQ9x6tFs_hsBjs="; //"https://img.freepik.com/premium-vector/hand-painted-background-violet-orange-colours_23-2148427578.jpg?w=2000";
  final String _logoImg =
     "assets/images/balatlife_logo.png";//"https://marka-logo.com/wp-content/uploads/2020/09/Nokia-Logo.png"; //"https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png";
  final bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    final double _height = context.height;
    final double _width = context.width;
   /* return Scaffold(
      backgroundColor: Colors.transparent,
      //resizeToAvoidBottomInset:false,
      body: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(_backgorundImg),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(_logoImg, height: _height / 3),

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                  ),
                  child: Container(
                      width: _width,
                      //height: MediaQuery.of(context).size.height*3/4,
                      constraints: BoxConstraints.expand(),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Form(
                          key: controller.loginFormKey,
                          child: Center(
                            child: SizedBox(
                              width: _width * 8 / 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: _height * 3 / 32),
                                  Text(
                                    "Mail Adresi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextFormField(
                                    controller: controller.emailController,
                                    validator: controller.validator,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: _height * 2 / 32),
                                  Text(
                                    "Şifre",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextFormField(
                                      controller: controller.passwordController,
                                      validator: controller.validator,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  )),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (_) => true,
                                      ),
                                      Text('beni hatırla'),
                                    ],
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () => {print('mrb')},
                                    child: Text('Şifremi Unuttum'),
                                  ),
                                  SizedBox(height: _height * 1 / 32),
                                  SizedBox(
                                    height: _height * 2 / 32,
                                    child: ElevatedButton(
                                      onPressed: controller.login,
                                      child: Text('Giriş Yap'),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black87),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: _height * 1 / 32),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );*/
    return Stack(
      children: [
       buildBackgroundImage(_height*1/2),
      buildScaffold(_height,_width),
      ],
    );
  }
  Widget buildBackgroundImage(double height){
    return  Container(
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(_backgorundImg),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget buildScaffold(double height,double width){
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:SafeArea(
        child: Column(
          children: [
            Image.asset(_logoImg, height: height / 3),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                child: Container(
                    width: width,
                    //height: MediaQuery.of(context).size.height*3/4,
                    constraints: BoxConstraints.expand(),
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: buildLoginForm(height,width),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLoginForm(double height,double width){
    return Form(
      key: controller.loginFormKey,
      child: Center(
        child: SizedBox(
          width: width * 8 / 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height * 3 / 32),
              Text(
                "mail address".tr,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              TextFormField(
                controller: controller.emailController,
                validator: controller.validator,
                keyboardType:TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: height * 2 / 32),
              Text(
                "password".tr,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              TextFormField(
                  controller: controller.passwordController,
                  validator: controller.validator,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              Row(
                children: [
                  Obx(()=>Checkbox(
                    value: controller.rememberMe.value,
                    onChanged:(_){controller.updateRememberMe(!controller.rememberMe.value);},
                  )),
                  Text('remember me'.tr),
                  Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.transparent),
                    ),
                    onPressed: () => Get.toNamed('/register'),
                    child: Text('sign up'.tr),
                  ),
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          Colors.transparent),
                    ),
                    onPressed: (){},
                    child: Text('forgot password'.tr),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: height * 1 / 32),
              SizedBox(
                height: height * 2 / 32,
                child: ElevatedButton(
                  onPressed:(){ controller.login();controller.status.isLoading? Get.defaultDialog(
                    title: "logging_in".tr,
                    barrierDismissible: false,
                    content: /*GetBuilder(  NOTE: Success tick bulunursa kullanılacak
                      init:controller,
                        builder: (status){
                      if(controller.status.isLoading)
                        return CircularProgressIndicator();
                      else if(controller.status.isSuccess)
                        return Icon(Icons.key);
                      else
                        return Icon(Icons.favorite);
                    }),
                  )*/CircularProgressIndicator()):null;},
                  child: Text('login'.tr),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(
                        Colors.black87),
                  ),
                ),
              ),
              SizedBox(height: height * 1 / 32),
            ],
          ),
        ),
      ),
    );
  }
}

/*return Stack(
children: [
Container(
height: context.height*3/5,
decoration: BoxDecoration(
image: DecorationImage(
image: NetworkImage(_backgorundImg),
fit: BoxFit.cover,
)),
),
Scaffold(
backgroundColor: Colors.transparent,
child:SafeArea(
          child: Column(
            children: [
              Image.asset(_logoImg, height: _height / 3),

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0),
                  ),
                  child: Container(
                      width: _width,
                      //height: MediaQuery.of(context).size.height*3/4,
                      constraints: BoxConstraints.expand(),
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Form(
                          key: controller.loginFormKey,
                          child: Center(
                            child: SizedBox(
                              width: _width * 8 / 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(height: _height * 3 / 32),
                                  Text(
                                    "Mail Adresi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextFormField(
                                    controller: controller.emailController,
                                    validator: controller.validator,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: _height * 2 / 32),
                                  Text(
                                    "Şifre",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  TextFormField(
                                      controller: controller.passwordController,
                                      validator: controller.validator,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  )),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (_) => true,
                                      ),
                                      Text('beni hatırla'),
                                    ],
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    onPressed: () => {print('mrb')},
                                    child: Text('Şifremi Unuttum'),
                                  ),
                                  SizedBox(height: _height * 1 / 32),
                                  SizedBox(
                                    height: _height * 2 / 32,
                                    child: ElevatedButton(
                                      onPressed: controller.login,
                                      child: Text('Giriş Yap'),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black87),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: _height * 1 / 32),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
),
],
);*/
