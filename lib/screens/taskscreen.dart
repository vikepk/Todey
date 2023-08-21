import 'package:flutter/material.dart';
import  'package:todey/components/components.dart';
import 'package:todey/screens/add_task.dart';

import '../components/tasklist.dart';
class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Widget bottomsheet(BuildContext context) =>Container(color: Colors.blueAccent,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>AddTask());
      },),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 25, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(Icons.toc_outlined, size: 60,)),
                Text('Todoey', style: TextStyle(color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),),
                Text("12 Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TaskList(),
              ),
            ),

          )
        ],
      ),
    );
  }

}



// Padding(
// padding: const EdgeInsets.only(left: 30),
// child: Row(children: [Expanded(child:Text("Buy Eggs",style: TextStyle(fontSize: 20),)),Expanded(child:Icon(Icons.check_box_outline_blank))],),
// )