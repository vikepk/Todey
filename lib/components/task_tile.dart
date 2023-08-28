import 'package:flutter/material.dart';
import 'package:todey/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todey/data/task_data.dart';

class TaskTile extends StatelessWidget {
  late String str;
  late bool isChecked;
  Function ischeck;
  Function del;

  TaskTile(
      {required this.str,
      required this.isChecked,
      required this.ischeck,
      required this.del});
  //Constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$str",
        style: TextStyle(color: Colors.black),
      ),
      titleTextStyle: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Colors.black),
      trailing: Checkbox(
          value: isChecked,
          onChanged: (bool? isChecked) {
            ischeck(isChecked);
          }),
      onLongPress: () {
        del();
        //Callback Function
      },
    );
  }
}
