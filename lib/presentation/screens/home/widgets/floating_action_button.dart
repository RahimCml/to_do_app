import 'package:flutter/material.dart';

class FloatingActionBottomWidget extends StatefulWidget {
  const FloatingActionBottomWidget({super.key});

  @override
  State<FloatingActionBottomWidget> createState() => _FloatingActionBottomWidgetState();
}

class _FloatingActionBottomWidgetState extends State<FloatingActionBottomWidget> {
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
      builder: (context) {
        return ListView(
          children: const [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter title'
              ),
            )
          ],
        );
      }
    );
  }
}