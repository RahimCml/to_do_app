import 'package:flutter/material.dart';

class FloatingActionBottomWidget extends StatefulWidget {
  const FloatingActionBottomWidget({super.key});

  @override
  State<FloatingActionBottomWidget> createState() => _FloatingActionBottomWidgetState();
}

class _FloatingActionBottomWidgetState extends State<FloatingActionBottomWidget> {
  late final TextEditingController titleController;
  late final TextEditingController subtitleController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    subtitleController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    subtitleController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add_rounded),
      onPressed: () {
        triggerBottomSheet();
        }
      );
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
                child: const Text('Add'),
                onPressed: () {},
                ),
            )
          ],
        );
      }
    );
  }
}