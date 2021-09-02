import 'package:get/get.dart';

class MyWorkouts{
  String? firstWorkout;
  String? secondWorkout;
  int? repCount;
  int? secCount;
  RxBool? done;

  MyWorkouts({this.firstWorkout,this.secondWorkout,this.repCount,this.secCount,this.done});
}

var myWorkoutList=[
  MyWorkouts(
    firstWorkout: "Barbell Squat",secondWorkout: "Skipping",repCount:10,secCount: 30,done: false.obs
  ),
  MyWorkouts(
      firstWorkout: "Barbell push press",secondWorkout: "Jumping Jack",repCount:10,secCount: 30,done: false.obs
  ),
  MyWorkouts(
      firstWorkout: "Barbell Dead lift",secondWorkout: "Kettle Swing",repCount:10,secCount: 30,done: false.obs
  ),
  MyWorkouts(
      firstWorkout: "Incline Dumbbell press",secondWorkout: "Abs Plank",repCount:10,secCount: 30,done: false.obs
  ),
  MyWorkouts(
      firstWorkout: "Bent over row",secondWorkout: "Farmer Walk",repCount:10,secCount: 30,done: false.obs
  )
];