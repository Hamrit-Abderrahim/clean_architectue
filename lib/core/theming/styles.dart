import 'package:clean_architectue/core/theming/font_weight_helpers.dart';
import 'package:clean_architectue/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  //!------ Regular 400------------------------

  static TextStyle styleRegular11 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: const Color(0xff616161),
  );
  static TextStyle styleRegular14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: const Color(0xff616161),
  );
  static TextStyle styleRegular20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle styleRegular30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: AppConstants.kGtSectraFine,
  );

  //!------ Meduim 500------------------------

  static TextStyle styleMeduim14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    // color: const Color(0xFF616161),
  );
  static TextStyle styleMeduim16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    // color: const Color(0xFF616161),
  );
  static TextStyle styleMeduim18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    // color: const Color(0xFF616161),
  );

  //!------- semiBold 600 --------
  static TextStyle styleSemiBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle styleSemiBold30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  //!------ Bold 700------------------------
  static TextStyle styleBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );
}
