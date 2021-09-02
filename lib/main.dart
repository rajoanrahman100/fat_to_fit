import 'package:flutter/material.dart';
import 'package:twenty_one_days_workout/components.dart';
import 'package:twenty_one_days_workout/workoutListScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:theme,
      home: WorkoutListScreen(),
    );
  }
}
