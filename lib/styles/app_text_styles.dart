import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyles {
  static TextStyle get appTextStyle => const TextStyle(
    fontSize: 18,
    color: AppColor.textColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle lisTileTitleStyle(bool isChecked) => TextStyle(
    fontSize: 22,
    color: AppColor.textColor,
    fontWeight: FontWeight.bold,
    decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
  );
  static TextStyle lisTileSubtitleStyle(bool isChecked) =>  TextStyle(
    fontSize: 12,
    color: AppColor.textColor,
    decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none
  );
}