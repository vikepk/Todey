import 'package:flutter/material.dart';
import 'package:todey/components/task_tile.dart';
import 'package:todey/screens/add_task.dart';
import "package:async/async.dart";
import 'package:provider/provider.dart';
import '../data/task_data.dart';

import '../data/task.dart';
import "dart:developer";

import '../screens/taskscreen.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List task = Provider.of<Task_Data>(context).task;
    return Consumer<Task_Data>(builder: (context, tasksdata, child) {
      return ListView.builder(
          itemCount: tasksdata.taskCount(),
          itemBuilder: (context, index) {
            return TaskTile(
                //Constructor
                str: tasksdata.task[index].name,
                isChecked: tasksdata.task[index].isDone,
                ischeck: (checkboxState) {
                  // setState(() {
                  //   task[index].toggleDone();
                  //   //_getResultFromNextScreen(context);

                  //   //setState inside a Stateful Widget a callback function
                  // });
                });
          });
    });
  }
}
