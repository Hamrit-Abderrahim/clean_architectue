import 'package:clean_architectue/core/theming/colos.dart';
import 'package:clean_architectue/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: ThemeData.light().textTheme,
  );
  static ThemeData get darkTheme => ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: AppConstants.kMontserrat,
    ),
  );
}
