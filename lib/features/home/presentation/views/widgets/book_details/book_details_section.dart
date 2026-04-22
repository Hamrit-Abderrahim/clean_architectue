import 'package:clean_architectue/core/theming/styles.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/book_btn_action.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 53.w),
          child: CustomBookImage(),
        ),
        SizedBox(height: 25.h),
        Text('The Jungle Book', style: AppStyles.styleRegular30),
        SizedBox(height: 6.h),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyles.styleMeduim18.apply(fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(height: 15.h),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 37.h),
        BookButtonAction(),
      ],
    );
  }
}
