import 'package:clean_architectue/core/lang/app_strings.dart';
import 'package:clean_architectue/core/theming/colos.dart';
import 'package:clean_architectue/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookButtonAction extends StatelessWidget {
  const BookButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: '19.99\$',
            textColor: Colors.black,
            backGrondColor: Colors.white,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: AppStrings.freePreview,
            textColor: AppColors.primaryColor,
            backGrondColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.r),
              bottomRight: Radius.circular(16.r),
            ),
          ),
        ),
      ],
    );
  }
}
