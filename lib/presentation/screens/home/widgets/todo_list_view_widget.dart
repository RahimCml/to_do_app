import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/providers/task_provider.dart';

import '../../viewmodels/check_box_list_item_model.dart';
import 'check_box_list_item.dart';

class TodoListViewWidget extends StatelessWidget {
  const TodoListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: taskProvider.taskList.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        CheckBoxListItemModel item = taskProvider.taskList[index];
        return CheckBoxListItem(
          item: item,
          index: index,
        );
      },
    );
  }
}
