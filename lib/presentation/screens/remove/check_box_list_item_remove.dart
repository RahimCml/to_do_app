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
    return CheckboxListTile(
        value: false,
        controlAffinity: ListTileControlAffinity.leading,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: AppColor.tileColor,
        title: Text(
          widget.item.title,
          style: AppTextStyles.lisTileTitleStyle(
              false),
        ),
        subtitle: Text(
          widget.item.subtitle,
          style: AppTextStyles.lisTileSubtitleStyle(
              false),
        ),
        onChanged: (value) {
          setState(() {});
        });
  }
}
