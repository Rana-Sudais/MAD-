import 'package:flutter/material.dart';
// import 'task1.dart';
// import 'task2.dart';
// import 'task3.dart';
// import 'task4.dart';
// import 'task5.dart';
// import 'task6.dart';
// import 'task7.dart';
import 'task8.dart';

void main() {
  runApp(const Task8());
}

class Task8 extends StatelessWidget {
  const Task8({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_lab4',
      // home: Task1(),
      // home: Task2(),
      // home: Task3(),
      // home: Task4(),
      // home: const Task5(),
      // home: const Task6(),
      // home: const Task7(),
      home: const Task8(),
    );
  }
}
