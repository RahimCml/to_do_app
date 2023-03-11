import 'package:flutter/material.dart';
import 'package:to_do_app/themes/app_colors.dart';

class AppBorderStyle {
  static OutlineInputBorder get inputBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color:AppColor.inputBorderColor
    )
  );
}