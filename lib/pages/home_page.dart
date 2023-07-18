import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_2/contrllers/home_controller.dart';
import 'package:get_2/model/post.dart';
import 'package:get_2/views/item_of_post.dart';

import '../contrllers/create_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String get id => "/home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<HomeController>().apiPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("set state"),
      ),
      body: GetX(
        init: HomeController(),
          builder: (controller) {
            return ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (cxt,index){
                Post post = controller.items[index];
                return itemHomePost(controller, post);
              },
            );
          }),



      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<CreateController>().nextToPage();
      }, child: const Icon(Icons.add, color: Colors.white,)),
    );
  }
}
