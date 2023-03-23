import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/providers/task_provider.dart';
import '../../../../styles/app_text_styles.dart';
import '../../../../themes/app_colors.dart';
import '../../viewmodels/check_box_list_item_model.dart';

class CheckBoxListItem extends StatefulWidget {
  final CheckBoxListItemModel item;
  final int index;
  const CheckBoxListItem({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  State<CheckBoxListItem> createState() => _CheckBoxListItemState();
}

class _CheckBoxListItemState extends State<CheckBoxListItem> {
  @override
  Widget build(BuildContext context) {
    final taskProvider = context.read<TaskProvider>();
    return CheckboxListTile(
        value: taskProvider.taskList[widget.index].isChecked,
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: AppColor.tileColor,
        title: Text(
          widget.item.title,
          style: AppTextStyles.lisTileTitleStyle(
              taskProvider.taskList[widget.index].isChecked),
        ),
        subtitle: Text(
          widget.item.subtitle,
          style: AppTextStyles.lisTileSubtitleStyle(
              taskProvider.taskList[widget.index].isChecked),
        ),
        onChanged: (value) {
          taskProvider.taskList[widget.index].isChecked = value!;
          if(value) {
            taskProvider.addChecksIndex(widget.index);
          } else {
            taskProvider.removeChecksIndex(widget.index);
          }
          setState(() {});
        });
  }
}
