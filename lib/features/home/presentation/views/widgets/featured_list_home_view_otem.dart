import 'package:clean_architectue/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListHomeViewItem extends StatelessWidget {
  const FeaturedListHomeViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0).r,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,

            borderRadius: BorderRadius.circular(16.r),
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
