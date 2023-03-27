import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/viewmodels/check_box_list_item_model.dart';

class TaskProvider with ChangeNotifier {
  List<CheckBoxListItemModel> taskList = [];
  List<CheckBoxListItemModel> removeTasks = [];
  List indexList = [];

  void addTask(item) {
    taskList.add(item);
    notifyListeners();
  }

  void bringTasksBack() {
    removeTasks.removeWhere((task) {
      if(task.isChecked == true) {
        taskList.add(task);
        task.isChecked = false;
      }
      return task.isChecked == false;
    });
    notifyListeners();
  }

  void removeTaskToTrash() {
    taskList.removeWhere((task) {
      if(task.isChecked == true) {
        removeTasks.add(task);
        task.isChecked == false;
        indexList.clear();
      }
      return task.isChecked == true;
    });
    notifyListeners();
  }

  void removeForeverAt(value) {
    removeTasks.removeAt(value);
    notifyListeners();
  }

    void removeForeverAll() {
    removeTasks.clear();
    notifyListeners();
  }

  void addChecksIndex(int index) {
    indexList.add(index);
    notifyListeners();
  }

  void removeChecksIndex(index) {
    indexList.remove(index);
    notifyListeners();
  }
}