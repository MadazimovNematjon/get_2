import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contrllers/create_controller.dart';


class CreatePage extends StatelessWidget {
  static const String id = "create_data";

  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Data")),
      body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: Get.find<CreateController>().titleController,
                  decoration: const InputDecoration(
                    hintText: "Title",
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  controller: Get.find<CreateController>().bodyController,
                  decoration: const InputDecoration(
                    hintText: "Body",
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    print("object");
                    Get.find<CreateController>().createData();
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Create"),
                    ),
                  ),
                )
              ],
            ),
          ),
    );
  }
}
