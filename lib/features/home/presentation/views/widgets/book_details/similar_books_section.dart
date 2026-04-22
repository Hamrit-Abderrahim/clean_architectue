import 'package:clean_architectue/core/lang/app_strings.dart';
import 'package:clean_architectue/core/theming/styles.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/book_details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.youcan, style: AppStyles.styleSemiBold14.apply()),
        SizedBox(height: 16.h),
        BookDetailsListView(),
      ],
    );
  }
}
