import 'package:clean_architectue/core/theming/colos.dart';
import 'package:clean_architectue/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Row(
        children: [
          Image.asset(AppImages.logo, height: 18.h),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24.r,

              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
