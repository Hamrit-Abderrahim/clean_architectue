import 'package:clean_architectue/core/theming/colos.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      ThemeData(scaffoldBackgroundColor: Colors.white);
  static ThemeData get darkTheme =>
      ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor);
}
