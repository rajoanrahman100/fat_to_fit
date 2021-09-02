import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twenty_one_days_workout/components.dart';
import 'package:twenty_one_days_workout/myWorkoutModel.dart';
import 'package:twenty_one_days_workout/workoutController.dart';

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
            return GestureDetector(
              onTap: (){
                controller.changeStatus(index);
              },
              child: Container(
                height: size.height/6,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Obx(()=>Row(
                  children: [
                    controller.myList[index].done!.value==false?
                    Container(
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: kBlackColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft:Radius.circular(10.0))
                      ),
                      child: Row(
                        children: [
                          width10,
                          RotatedBox(
                            quarterTurns: 1,
                            child: textRoboto("2/3 rounds", Colors.white,fontWeight: FontWeight.w500),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: textRoboto("Super Set", Colors.white,fontWeight: FontWeight.w500),
                          ),


                        ],
                      ),
                    ):Container(
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft:Radius.circular(10.0))
                      ),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: textRoboto("COMPLETED", Colors.white,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    textRoboto("${controller.myList[index].firstWorkout}", kBlackColor,fontWeight: FontWeight.w500),
                                    textRoboto("${controller.myList[index].repCount} reps", kBlackColor,fontWeight: FontWeight.w500),
                                  ],
                                ),
                              ),
                            ),
                            Row(

                              children: [
                                Expanded(child: Divider(color: kBlackColor,)),
                                textRoboto(" Tap When Complete ", kBlackColor,fontWeight: FontWeight.w500,fontSize: 12.0),
                                Expanded(child: Divider(color: kBlackColor,)),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    textRoboto("${controller.myList[index].secondWorkout}", kBlackColor,fontWeight: FontWeight.w500),
                                    textRoboto("${controller.myList[index].secCount} sec", kBlackColor,fontWeight: FontWeight.w500),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )



                  ],
                )),
              ),
            );
          },
        ),
      )),
    );
  }
}
