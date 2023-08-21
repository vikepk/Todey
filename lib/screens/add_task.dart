import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Add Task",style: TextStyle(fontSize: 30,color: Colors.blueAccent),),
              TextField(style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
             // Expanded(child: MaterialButton(height:50,color:Colors.blueAccent,onPressed: (){},child: Text("Add",style: TextStyle(fontSize: 25,color: Colors.white),),shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),)),
              TextButton(onPressed: (){},child: Text("Add",style: TextStyle(fontSize: 25,color: Colors.blueAccent),))],
          ),
        ),
      ),
    );
  }
}
