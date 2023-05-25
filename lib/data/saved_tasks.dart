import 'package:hive_flutter/hive_flutter.dart';

class ToDoSavedTasks {
  List toDoList = [];
  // reference the box
  final _savedTasks = Hive.box("savedTasks");

  // first run for this app
  void createInitialData() {
    toDoList = [
      ["This is an example of the tasks that you will add in this app", false],
      [
        "This is a default tasks which you can remove it by slide from the right",
        false
      ],
    ];
  }

  // load the data from locale
  void loadData() {
    toDoList = _savedTasks.get("TODOLIST");
  }

  // update the locale data
  void updateList() {
    _savedTasks.put("TODOLIST", toDoList);
  }
}
