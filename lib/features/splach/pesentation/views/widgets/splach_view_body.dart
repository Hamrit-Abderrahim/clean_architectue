import 'package:clean_architectue/core/routing/routes.dart';
import 'package:clean_architectue/core/theming/images.dart';
import 'package:clean_architectue/features/splach/pesentation/views/widgets/text_splah_animated.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImages.logo),
        SpalchTextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  //!-----------------navigateToHomeView-------------------
  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () async {
      if (!mounted) return;
      Navigator.pushNamed(context, Routes.homeScreen);
    });
  }

  //!-----------------initSlidingAnimation-------------------
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
