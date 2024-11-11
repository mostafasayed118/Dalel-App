import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_image_onboarding.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_smooth_page_indicator_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  PageController controller = PageController();
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              //! image
              CustomImageOnBoarding(index: index),
              //! indicator
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              //! title
              const SizedBox(height: 32),
              Text(
                onBoardingList[index].title,
                style: CustomTextStyle.poppins600Style28.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              //! subtitle
              const SizedBox(height: 16),
              Text(
                onBoardingList[index].subTitle,
                style: CustomTextStyle.poppins300Style16,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
