import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twenty_one_days_workout/components.dart';
import 'package:twenty_one_days_workout/myWorkoutModel.dart';
import 'package:twenty_one_days_workout/workoutController.dart';
import 'package:twenty_one_days_workout/workoutListUI.dart';

class WorkoutListScreen extends StatelessWidget {


  var controller=Get.put(WorkoutController());

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
     // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kBlackColor.withOpacity(0.8),
        title: textRoboto("21 days fat to fit", Colors.white,fontWeight: FontWeight.w500),
        centerTitle: true,
      ),
      body: Obx(()=>Container(
        height: size.height,width: size.width,
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: controller.myList.length,
          itemBuilder: (_,index){
            return WorkoutListUI(controller: controller, size: size,index: index,);
          },
        ),
      )),
    );
  }
}

