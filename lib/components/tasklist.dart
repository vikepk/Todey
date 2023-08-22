import 'package:flutter/material.dart';
import 'package:todey/components/task_tile.dart';

import '../data/task.dart';




class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();

}


class _TaskListState extends State<TaskList> {
  List<Task> task=[Task(name:"Buy Egg"  ),Task(name: "Exercise"),Task(name: "Study")];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: task.length,
        itemBuilder:(context, index){

        return TaskTile(
          //Constructor
            str:task[index].name,
            isChecked: task[index].isDone,
            ischeck:(checkboxState){
              setState(() {
                  task[index].toggleDone();
                  //setState inside a Stateful Widget a callback function
            });
            });

    }  );
  }
}