import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/home/widgets/check_box_list_item.dart';
import '../../../styles/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App', style: AppTextStyles.appTextStyle),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: 6,
        separatorBuilder:(context, index) => const SizedBox(height: 12),
        itemBuilder:(context, index) {
          return const CheckBoxListItem();
        },
      ),
    );
  }
}