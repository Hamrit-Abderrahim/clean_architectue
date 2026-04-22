import 'package:clean_architectue/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGrondColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.onPressed,
  });
  final Color backGrondColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGrondColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ??
                BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                ),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: AppStyles.styleBold16.apply(color: textColor)),
      ),
    );
  }
}
