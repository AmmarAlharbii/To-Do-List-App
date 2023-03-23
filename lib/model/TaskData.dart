import 'package:flutter/material.dart';
import 'package:to_do_app/model/task.dart';

class TaskData extends ChangeNotifier {
  //this class to extends futers of provider
  List<Task> task = []; //List

  void addTask(String taskTitle) {
    task.add(
      Task(name: taskTitle),
    );
    notifyListeners(); // to tell all widget about the update
  }

  void updateTask(Task task) {
    //to change and update the checkbox
    task.checkChange();
    notifyListeners();
  }

  void deleteTask(Task tasks) {
    task.remove(tasks);
    notifyListeners();
  }
}
