import 'package:flutter/material.dart';
import '../../viewmodels/check_box_list_item_model.dart';
import 'check_box_list_item.dart';

class TodoListViewWidget extends StatelessWidget {
  List<CheckBoxListItemModel> taskList = [];
  TodoListViewWidget({super.key, required this.taskList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: taskList.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder:(context, index) => const SizedBox(height: 12),
        itemBuilder:(context, index) {
          CheckBoxListItemModel item = taskList[index];
          return CheckBoxListItem(item: item);
        },
      );
  }
}