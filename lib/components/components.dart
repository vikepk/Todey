import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {


  @override
  State<TaskTile> createState() => _TaskTileState();

}

class _TaskTileState extends State<TaskTile> {
  bool value= false;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text("Buy Egg",),
      titleTextStyle: TextStyle(decoration:value?TextDecoration.lineThrough:null,color: Colors.black),
      trailing: IsCheck( ischecked: value,isCheck:(bool ischecked) {
        setState(() {value=!ischecked;});
        print(value);
        //Callback Function
      })
    );
  }
}


class IsCheck extends StatelessWidget {
  late bool ischecked;
 final Function isCheck;
 //Inside a OnTap OnChanged
  IsCheck({required this.ischecked,required this.isCheck});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: this.ischecked,
        onChanged:(bool){
          print(this.ischecked);
          isCheck(this.ischecked);
          //Check How to use inside a function
        });
  }
}


