import 'package:flutter/material.dart';
import 'package:to_do_app/styles/app_text_style.dart';
import 'package:to_do_app/themes/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App', style: AppTextStyles.appTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CheckboxListTile(
        value: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        tileColor: AppColor.tileColor,
        title: Text('Title', style: AppTextStyles.lisTileTitleStyle,),
        subtitle: Text('Subtitle', style: AppTextStyles.lisTileSubtitleStyle,),
        onChanged: (v) {
        }),
      ),
    );
  }
}