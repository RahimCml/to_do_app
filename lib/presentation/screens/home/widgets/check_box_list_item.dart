import 'package:flutter/material.dart';
import '../../../../styles/app_text_style.dart';
import '../../../../themes/app_colors.dart';

class CheckBoxListItem extends StatefulWidget {
  const CheckBoxListItem({super.key});

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
      title: Text('Title', style: AppTextStyles.lisTileTitleStyle,),
      subtitle: Text('Subtitle', style: AppTextStyles.lisTileSubtitleStyle,),
      onChanged: (v) {
        setState(() {
          isChecked = v!;
        });
      });
  }
}