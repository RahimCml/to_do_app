import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyles {
  static TextStyle get appTextStyle => const TextStyle(
    fontSize: 18,
    color: AppColor.textColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle get lisTileTitleStyle => const TextStyle(
    fontSize: 16,
    color: AppColor.textColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle get lisTileSubtitleStyle => const TextStyle(
    fontSize: 12,
    color: AppColor.textColor,
  );
}