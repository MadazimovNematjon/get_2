import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../contrllers/update_controller.dart';

class UpdatePage extends StatelessWidget {
  static const String id = "create_data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Update Data")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: Get.find<UpdateController>().titleController.value,
              decoration: const InputDecoration(
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: Get.find<UpdateController>().bodyController.value,
              decoration: const InputDecoration(
                hintText: "Body",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: Get.find<UpdateController>().upData(),
              child: const Text("Create"),
            ),
          ],
        ),
      ),
    );
  }
}
