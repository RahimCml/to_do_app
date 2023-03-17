import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/viewmodels/check_box_list_item_model.dart';

class TaskProvider with ChangeNotifier {
  List<CheckBoxListItemModel> taskList = [];
  List<CheckBoxListItemModel> removeTasks = [];

  void addTask(CheckBoxListItemModel item) {
    taskList.add(item);
    print('addTask');
    notifyListeners();
  }
}