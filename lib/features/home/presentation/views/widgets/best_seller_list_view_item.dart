import 'package:clean_architectue/core/routing/routes.dart';
import 'package:clean_architectue/core/theming/images.dart';
import 'package:clean_architectue/core/theming/styles.dart';
import 'package:clean_architectue/core/utils/constants.dart';
import 'package:clean_architectue/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.bookDetailsView);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SizedBox(
          height: 105.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppImages.testImage),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30.w),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Text(
                          'Harry Potter and the Goblet of Fire',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.styleRegular20.apply(
                            fontFamily: AppConstants.kGtSectraFine,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text('J.K. Rowling', style: AppStyles.styleMeduim14),
                      SizedBox(height: 3.h),

                      Row(
                        children: [
                          Text('19.99 £', style: AppStyles.styleBold16),
                          Spacer(),
                          BookRating(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
