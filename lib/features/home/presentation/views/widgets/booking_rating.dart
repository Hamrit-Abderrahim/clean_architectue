import 'package:clean_architectue/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        FaIcon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16.sp),
        SizedBox(width: 6.w),

        Text('4.8', style: AppStyles.styleMeduim14),
        SizedBox(width: 5.w),

        Opacity(
          opacity: 0.5,
          child: Text('(2002)', style: AppStyles.styleMeduim14),
        ),
      ],
    );
  }
}
