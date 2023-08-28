import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String str;
  final bool isChecked;
  final Function ischeck;
  final Function del;

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
