import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/home/widgets/todo_list_view_widget.dart';
import '../../viewmodels/check_box_list_item_model.dart';
import 'check_box_list_item.dart';

class FloatingActionBottomWidget extends StatefulWidget {
  const FloatingActionBottomWidget({super.key});

  @override
  State<FloatingActionBottomWidget> createState() => _FloatingActionBottomWidgetState();
}

class _FloatingActionBottomWidgetState extends State<FloatingActionBottomWidget> {
   late final TextEditingController titleController;
   late final TextEditingController subtitleController;
    List<CheckBoxListItemModel> taskList = [];

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    subtitleController = TextEditingController();
    }

  @override
  void dispose() {
    titleController.dispose();
    subtitleController.dispose();
    super.dispose();
  }

  void triggerBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(12),
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Enter title'
              ),
            ),
            const SizedBox(height: 16,),
            TextField(
              controller: subtitleController,
              decoration: const InputDecoration(
                hintText: 'Enter subtitle'
              ),
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 120),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )
                ),
                onPressed: () {
                  taskList.add(CheckBoxListItemModel(titleController.text, subtitleController.text));
                  titleController.clear();
                  subtitleController.clear();
                  Navigator.pop(context);
                  setState(() {
                  });
                },
                child: const Text('Add'),
              ),
            )
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TodoListViewWidget(taskList: taskList),
      floatingActionButton: FloatingActionButton(
      onPressed: triggerBottomSheet,
      child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
