import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/screens/home/home_screen.dart';
import 'package:to_do_app/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appThemes,
      home: const HomeScreen(),
      );
  }
}
