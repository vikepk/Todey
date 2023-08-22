import 'package:flutter/material.dart';
import 'package:todey/components/task_tile.dart';

class TaskTile extends StatelessWidget {
  late String str;
  late bool isChecked;
  Function ischeck;


  TaskTile({required this.str,required this.isChecked,required this.ischeck});

@override
  Widget build(BuildContext context) {


    return  ListTile(

        title: Text("$str",style: TextStyle(color: Colors.black),),
        titleTextStyle: TextStyle(decoration:isChecked?TextDecoration.lineThrough:null,color: Colors.black),
        trailing:  Checkbox(
            value: isChecked,
            onChanged:(bool? isChecked){
              //Check How to use inside a function
              //Have to use Function inside onChanged and arguments have to be passed
              ischeck(isChecked);
            }

            ),
      );
  }
}





