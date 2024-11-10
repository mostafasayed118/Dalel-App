import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/onboarding/presentation/widgets/custom_smooth_page_indicator_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              //! image
              Image.asset(AppAssets.imagesOnboarding1),
              //! indicator
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              //! title
              const SizedBox(height: 32),
              Text(
                AppStrings.onboardingTitleOne,
                style: CustomTextStyle.poppins600Style28.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              //! subtitle
              const SizedBox(height: 16),
              const Text(AppStrings.onboardingSubtitleOne,
                  style: CustomTextStyle.poppins300Style16,
                  textAlign: TextAlign.center),
            ],
          );
        },
      ),
    );
  }
}
