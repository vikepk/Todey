class Task {
  late String name;
  late bool isDone;
  Task({required this.name,this.isDone=false});

  void toggleDone(){
    isDone=!isDone;
    //print(isDone);
  }

}