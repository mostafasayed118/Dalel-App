import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotHeight: 6,
          dotWidth: 8,
          dotColor: Colors.grey,
          activeDotColor: AppColors.deepBrownColor,
          spacing: 4,
          expansionFactor: 4,
          radius: 16,
          strokeWidth: 2,
          offset: 2,
        ), // your preferred effect
        onDotClicked: (index) {});
  }
}
