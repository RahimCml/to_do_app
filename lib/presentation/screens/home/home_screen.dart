import 'package:flutter/material.dart';
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
      body: const FloatingActionBottomWidget()
      );
  }
}