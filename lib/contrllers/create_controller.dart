import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/create_page.dart';
class CreateController extends GetxController{

  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  createData(){
    String title = titleController.value.text;
    String body = bodyController.value.text;
    print('Button Pressed - Title: $title, Body: $body');
  }

  nextToPage(){
    Get.to(()=> CreatePage());
  }

}