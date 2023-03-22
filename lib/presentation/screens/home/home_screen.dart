import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/presentation/screens/home/widgets/floating_action_button.dart';
import 'package:to_do_app/presentation/screens/remove/remove_screen.dart';
import 'package:to_do_app/providers/task_provider.dart';
import '../../../styles/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('ToDo App', style: AppTextStyles.appTextStyle),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      taskProvider.removeTask();
                      Navigator.push<void>(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RemoveScreen()));
                    },
                    child: const Icon(
                      Icons.delete_rounded,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  if (taskProvider.removeTasks.isNotEmpty)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Text(taskProvider.removeTasks.length.toString()),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        body: const FloatingActionBottomWidget());
  }
}
