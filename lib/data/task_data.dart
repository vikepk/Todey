import 'dart:collection';

import 'package:flutter/material.dart';

import 'task.dart';

class Task_Data extends ChangeNotifier {
  //Class of Function for Provider with ChangeNotifier
  List<Task> _task = [
    Task(name: "Buy Egg"),
    Task(name: "Exercise"),
    Task(name: "Study"),
    Task(name: "Meeting")
  ];
  //List of Initial Data
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_task);
    //Task List is immutable
  }

  int taskCount() {
    //To find length of List Task
    return _task.length;
  }

  void add(newvalue) {
    final task1 = Task(name: newvalue);
    //Adding new task to the list
    _task.add(task1);
    //Changes are listened using notifyListeners
    notifyListeners();
  }

  void toggle(Task task) {
    //To make isDone True
    task.toggleDone();
    notifyListeners();
  }

  void dele(index) {
    //To delete a list data
    _task.removeAt(index);
    notifyListeners();
  }
}
