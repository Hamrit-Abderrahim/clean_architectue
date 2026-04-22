import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/book_details_section.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/custom_book_details_app_bar.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/book_details/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 30.h)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
