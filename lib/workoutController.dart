import 'package:get/get.dart';
import 'package:twenty_one_days_workout/myWorkoutModel.dart';

class WorkoutController extends GetxController{

  List<MyWorkouts> myList=myWorkoutList.obs;

  changeStatus(index){
    myList[index].done!.value=!myList[index].done!.value;
    print(myList[index].done!.value);
  }

}