import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_2/pages/home_page.dart';
import 'package:get_2/service/di_service.dart';

Future main() async{
  await DIService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
