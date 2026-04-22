import 'package:clean_architectue/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.borderRadius});
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0).r,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,

            borderRadius: BorderRadius.circular(borderRadius ?? 16).r,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppImages.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
