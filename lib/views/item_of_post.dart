
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';


import '../contrllers/home_controller.dart';
import '../contrllers/update_controller.dart';
import '../model/post.dart';

Widget itemHomePost(HomeController homeController, Post post) {
  return Slidable(
    startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          onDismissed: (){

          },
        ),
        children: [SlidableAction(
          onPressed: (BuildContext context) {
            Get.find<UpdateController>().navigateToNextPage();

          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.edit,
        )]
    ),
    endActionPane:  ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          onDismissed: (){

          },
        ),
        children: [
          SlidableAction(
          onPressed: (BuildContext cxt) {
            homeController.apiDelete(post).then((value) => {
              if(value) homeController.apiPostList()
            });
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          icon: Icons.delete,
        )]
    ),
    child: Container(
      padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
      child: Column(
        children: [
          Text(post.title!.toUpperCase()),
          const SizedBox(
            height: 5,
          ),
          Text(post.body ?? ""),
        ],
      ),
    ),
  );
}