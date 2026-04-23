import 'package:clean_architectue/core/theming/styles.dart';
import 'package:clean_architectue/features/search/presentation/views/widgets/custom_text_fieled.dart';
import 'package:clean_architectue/features/search/presentation/views/widgets/search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: CustomTextFieled(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Text('Search Result', style: AppStyles.styleSemiBold18),
        ),

        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
