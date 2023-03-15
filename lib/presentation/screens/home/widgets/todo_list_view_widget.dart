import 'package:flutter/material.dart';

import '../../viewmodels/check_box_list_item_model.dart';
import 'check_box_list_item.dart';

class TodoListViewWidget extends StatelessWidget {
  List<CheckBoxListItemModel> taskLists = [];
  TodoListViewWidget({
    Key? key,
    required this.taskLists,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: taskLists.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder:(context, index) => const SizedBox(height: 12),
        itemBuilder:(context, index) {
          CheckBoxListItemModel item = taskLists[index];
          return CheckBoxListItem(item: item, taskLists: taskLists, index: index,);
        },
      );
  }
}
