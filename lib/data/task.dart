import 'package:todey/components/tasklist.dart';

class Task {
  late String name;
  late bool isDone;
  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
    //print(isDone);
  }
  // void add(){
  //   setState(() {
  //     task.add(Task(name: "prem"));
  //   });
}
