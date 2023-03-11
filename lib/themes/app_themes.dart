import 'package:flutter/material.dart';
import 'package:to_do_app/styles/app_border_styles.dart';
import 'package:to_do_app/themes/app_colors.dart';

class AppThemes {
  static ThemeData get appThemes => ThemeData(
    primarySwatch: MaterialColor(0xff495579, colorMap),
    inputDecorationTheme: InputDecorationTheme(
      border: AppBorderStyle.inputBorder,
      enabledBorder: AppBorderStyle.inputBorder
    )
  );
}

Map<int, Color> colorMap = {
  50:AppColor.mainColor,
  100:AppColor.mainColor,
  200:AppColor.mainColor,
  300:AppColor.mainColor,
  400:AppColor.mainColor,
  500:AppColor.mainColor,
  600:AppColor.mainColor,
  700:AppColor.mainColor,
  800:AppColor.mainColor,
  900:AppColor.mainColor

};