import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/presentation/screens/home/widgets/todo_list_view_widget.dart';
import 'package:to_do_app/providers/task_provider.dart';
import '../../viewmodels/check_box_list_item_model.dart';

class FloatingActionBottomWidget extends StatefulWidget {
  const FloatingActionBottomWidget({super.key});

  @override
  State<FloatingActionBottomWidget> createState() =>
      _FloatingActionBottomWidgetState();
}

class _FloatingActionBottomWidgetState
    extends State<FloatingActionBottomWidget> {
  late final TextEditingController titleController;
  late final TextEditingController subtitleController;
  late final bool isChecked;

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
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        builder: (context) {
          return ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(12),
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(hintText: 'Enter title'),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: subtitleController,
                decoration: const InputDecoration(hintText: 'Enter subtitle'),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 120),
                child: Consumer<TaskProvider>(
                  builder: (context, taskProvider, child) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                      onPressed: () {
                        if (titleController.text.isNotEmpty &&
                            subtitleController.text.isNotEmpty) {
                          taskProvider.addTask(CheckBoxListItemModel(
                              titleController.text, subtitleController.text));
                          titleController.clear();
                          subtitleController.clear();
                          Navigator.pop(context);
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('OPS!!!'),
                              content: const Text('''Be sure that isn't the title or subtitle an empty'''),
                              actions: <Widget>[
                                TextButton(onPressed: () => Navigator.pop(context, 'OK'), child: const Text('OK'))
                              ],
                            ),
                          );
                        }
                        setState(() {});
                      },
                      child: const Text('Add'),
                    );
                  },
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Scaffold(
      body: const TodoListViewWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (taskProvider.indexList.isEmpty) {
            triggerBottomSheet();
          } else {
            taskProvider.removeTaskToTrash();
          }
        },
        child: taskProvider.indexList.isEmpty
            ? const Icon(Icons.add_rounded)
            : const Icon(Icons.delete),
      ),
    );
  }
}
