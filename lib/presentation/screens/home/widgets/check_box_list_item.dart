import 'package:flutter/material.dart';
import '../../../../styles/app_text_styles.dart';
import '../../../../themes/app_colors.dart';
import '../../viewmodels/check_box_list_item_model.dart';

class CheckBoxListItem extends StatefulWidget {
  final List<CheckBoxListItemModel> taskLists;
  final CheckBoxListItemModel item;
  final int index;
  const CheckBoxListItem({super.key, required this.item, required this.index, required this.taskLists});

  @override
  State<CheckBoxListItem> createState() => _CheckBoxListItemState();
}
bool isChecked = false;

class _CheckBoxListItemState extends State<CheckBoxListItem> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      controlAffinity: ListTileControlAffinity.leading,
      secondary: GestureDetector(
        onTap: () {
          widget.taskLists.removeAt(widget.index);
          setState(() {
          });
        },
        child: Icon(Icons.delete_rounded, color: AppColor.trashIconColor,)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: AppColor.tileColor,
      title: Text(widget.item.title, style: AppTextStyles.lisTileTitleStyle(isChecked),),
      subtitle: Text(widget.item.subtitle, style: AppTextStyles.lisTileSubtitleStyle(isChecked),),
      onChanged: (v) {
        setState(() {
          isChecked = v!;
        });
      });
  }
}