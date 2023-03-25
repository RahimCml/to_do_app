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

  void removeTask() {
    taskList.removeWhere((task) {
      if(task.isChecked == true) {
        removeTasks.add(task);
        indexList.clear();
      }
      return task.isChecked == true;
    });
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