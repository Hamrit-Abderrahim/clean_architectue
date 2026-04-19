import 'package:clean_architectue/core/lang/app_strings.dart';
import 'package:clean_architectue/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BestSellerTitle extends StatelessWidget {
  const BestSellerTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppStrings.bestSeller, style: AppStyles.styleSemiBold18);
  }
}
