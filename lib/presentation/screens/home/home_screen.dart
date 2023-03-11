import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/home/widgets/check_box_list_item.dart';
import 'package:to_do_app/presentation/screens/home/widgets/floating_action_button.dart';
import '../../../styles/app_text_styles.dart';

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
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder:(context, index) => const SizedBox(height: 12),
        itemBuilder:(context, index) {
          return const CheckBoxListItem();
        },
      ),
      floatingActionButton: const FloatingActionBottomWidget()
    );
  }
}

// 30 deqiqe ilk videoda