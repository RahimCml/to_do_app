import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/presentation/screens/viewmodels/check_box_list_item_model.dart';
import 'package:to_do_app/providers/task_provider.dart';
import 'package:to_do_app/styles/app_text_styles.dart';

import 'check_box_list_item_remove.dart';

class RemoveScreen extends StatefulWidget {
  const RemoveScreen({super.key});

  @override
  State<RemoveScreen> createState() => _RemoveScreenState();
}

class _RemoveScreenState extends State<RemoveScreen> {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Removed Tasks',
          style: AppTextStyles.appBarTitleStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.delete_forever_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        itemCount: taskProvider.removeTasks.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 12,
        ),
        itemBuilder: ((context, index) {
          CheckBoxListItemModel item = taskProvider.removeTasks[index];
        }),
      ),
    );
  }
}
