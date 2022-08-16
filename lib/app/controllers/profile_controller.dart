import 'dart:developer';
import 'dart:io';

import 'package:balatlife/app/data/repositories/user_api_repository.dart';
import 'package:balatlife/app/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../data/models/user.dart';
import '../ui/widgets/snackbar_generator.dart';

class ProfileController extends GetxController with StateMixin {
  /* final imageFile =Rx<File?>(File(''));
  final ImagePicker _picker = ImagePicker();
  pickPhoto() async{
    try{
      XFile? image;
      image=await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image!=null){
        imageFile.value=File(image.path);
      }
    }
    on PlatformException catch(e){print(e);}
  }*/
  final userApi =Get.find<UserApiRepository>();
  final addressController=TextEditingController(text:UserRepository.instance.user!.adres);
  final phoneController = TextEditingController(text:UserRepository.instance.user!.telefon.substring(3));
  final nameController = TextEditingController(text:UserRepository.instance.user!.isim);
  final surnameController = TextEditingController(text:UserRepository.instance.user!.soyIsim);
  PhoneNumber? number = PhoneNumber();

  File? imageFile;
  pickPhoto(ImageSource source) async {
    try {
      XFile? image;
      image = await ImagePicker().pickImage(source: source);
      if (image != null) {
        imageFile = File(image.path);
        update();
      }
    } on PlatformException catch (e) {
      log(e.toString());
    }
  }

 changePhoto()async{
    if(imageFile !=null){
      await userApi.changeProfilePhoto(imageFile).then((status){
        if(status!=null){
          SnackbarGenerator.authSnackbar(title: "edit", message: "edit_photo_success", auth: true);
          UserRepository.instance.user=User.fromJson(status);
          UserRepository.instance.setUser();
          imageFile=null;
          update();
        }else{
          SnackbarGenerator.authSnackbar(title: "edit", message: "edit_photo_error", auth: false);
        }
      });
    }
  }


  editProfile()async{
    String isim=nameController.text !=''?nameController.text:UserRepository.instance.user!.isim;
    String soyIsim=surnameController.text !=''?surnameController.text:UserRepository.instance.user!.soyIsim;
    String adres=addressController.text!=''?addressController.text:UserRepository.instance.user!.adres;
    String telefon=GetUtils.isPhoneNumber(number!=null?'':number.toString())?number.toString():UserRepository.instance.user!.telefon;
    User editUser=User(
      id: UserRepository.instance.user!.id,
      mail: UserRepository.instance.user!.mail,
      isim: isim,
      soyIsim: soyIsim,
      adres: adres,
      resimYolu: UserRepository.instance.user!.resimYolu,
      role:UserRepository.instance.user!.role,
      telefon: telefon
    );
      await userApi.editProfile(imageFile,editUser).then((status){
        if(status!=null){
          SnackbarGenerator.authSnackbar(title: "edit", message: "edit_profile_success", auth: true);
          UserRepository.instance.user=User.fromJson(status);
          UserRepository.instance.setUser();
          imageFile=null;
          update();
          _updateControllers();
        }else{
          SnackbarGenerator.authSnackbar(title: "edit", message: "edit_profile_error", auth: false);
        }
      });
  }

  _updateControllers(){
    addressController.text=UserRepository.instance.user!.adres;
    phoneController.text = UserRepository.instance.user!.telefon.substring(3);
    nameController.text = UserRepository.instance.user!.isim;
    surnameController.text =UserRepository.instance.user!.soyIsim;
  }

  imageSourceBottomSheet() {
    return Get.bottomSheet(
           Container(
             color: Colors.transparent,
             child: ListView(
        shrinkWrap: true,
              children: [
                _buildTile(title:'from_cam',source:ImageSource.camera,icon: Icons.camera),
                Divider(),
                _buildTile(title:'from_gal',source:ImageSource.gallery,icon: Icons.image),
              ],
          ),
           ),backgroundColor: Get.isDarkMode? Theme.of(Get.context!).primaryColor:Colors.white);
  }

  _buildTile({required String title,required ImageSource source,required IconData icon}){
    return  ListTile(
      trailing: Icon(icon,),
      title: Text(
        title.tr,
        style: TextStyle(
            fontWeight: FontWeight.bold,),
      ),
      onTap:(){Get.back();pickPhoto(source);},
    );
  }
}
