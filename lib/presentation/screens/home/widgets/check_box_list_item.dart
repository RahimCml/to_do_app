import 'package:flutter/material.dart';
import '../../../../styles/app_text_styles.dart';
import '../../../../themes/app_colors.dart';
import '../../viewmodels/check_box_list_item_model.dart';

class CheckBoxListItem extends StatefulWidget {
  final CheckBoxListItemModel item;
  const CheckBoxListItem({super.key, required this.item});

  @override
  State<CheckBoxListItem> createState() => _CheckBoxListItemState();
}
bool isChecked = false;

class _CheckBoxListItemState extends State<CheckBoxListItem> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: AppColor.tileColor,
      title: Text(widget.item.title, style: AppTextStyles.lisTileTitleStyle,),
      subtitle: Text(widget.item.subtitle, style: AppTextStyles.lisTileSubtitleStyle,),
      onChanged: (v) {
        setState(() {
          isChecked = v!;
        });
      });
  }
}