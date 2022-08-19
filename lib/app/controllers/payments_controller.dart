import 'package:file_picker/file_picker.dart';
import'package:get/get.dart';
class PaymentsController extends GetxController{
  FilePickerResult? file;
  String? fileName;
  bool upload=false;
  uploadFile()async{
    file =await FilePicker.platform.pickFiles(type: FileType.custom,
      allowedExtensions: ['xls', 'xlsx'],);
    if(file!=null){
      fileName=file!.files.first.name;
      upload=true;
      update();
    }
  }
}