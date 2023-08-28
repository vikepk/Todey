import 'package:flutter/material.dart';
import 'package:todey/data/task_data.dart';

import 'screens/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //Adding Provider
      //To the MaterialApp
      create: (BuildContext context) {
        return Task_Data();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
