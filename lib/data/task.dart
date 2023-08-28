class Task {
  //To create a List of Task
  late String name;
  late bool isDone;
  Task({required this.name, this.isDone = false});

  void toggleDone() {
    //To make isDone True / False
    isDone = !isDone;
  }
}
