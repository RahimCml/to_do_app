import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/providers/task_provider.dart';
import '../../../../styles/app_text_styles.dart';
import '../../../../themes/app_colors.dart';
import '../viewmodels/check_box_list_item_model.dart';

class CheckBoxListItemRemove extends StatefulWidget {
  final CheckBoxListItemModel item;
  final int index;
  const CheckBoxListItemRemove({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  State<CheckBoxListItemRemove> createState() => _CheckBoxListItemRemoveState();
}

class _CheckBoxListItemRemoveState extends State<CheckBoxListItemRemove> {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return CheckboxListTile(
        value: taskProvider.removeTasks[widget.index].isChecked,
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: AppColor.tileColor,
        title: Text(
          widget.item.title,
          style: AppTextStyles.lisTileTitleStyle(
              taskProvider.removeTasks[widget.index].isChecked),
        ),
        subtitle: Text(
          widget.item.subtitle,
          style: AppTextStyles.lisTileSubtitleStyle(
              taskProvider.removeTasks[widget.index].isChecked),
        ),
        onChanged: (value) {
          taskProvider.removeTasks[widget.index].isChecked = value!;
          setState(() {});
        });
  }
}
