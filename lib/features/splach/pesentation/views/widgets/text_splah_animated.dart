import 'package:clean_architectue/core/lang/app_strings.dart';
import 'package:clean_architectue/core/theming/colos.dart';
import 'package:flutter/material.dart';

class SpalchTextAnimation extends StatelessWidget {
  const SpalchTextAnimation({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            AppStrings.splachText,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.primaryColor),
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
