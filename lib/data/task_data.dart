import 'package:flutter/material.dart';

import 'task.dart';
import 'package:provider/provider.dart';

class Task_Data extends ChangeNotifier {
  List<Task> task = [
    Task(name: "Buy Egg"),
    Task(name: "Exercise"),
    Task(name: "Study"),
    Task(name: "Meeting")
  ];
  int taskCount() {
    return task.length;
  }
}
