import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/features/onboarding/presentation/widgets/obboarding_body_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_upper_nav_bar_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //! skip button
              const SizedBox(height: 40),
              const CustomUpperNavBar(),
              const SizedBox(height: 32),
              OnBoardingBody(),
              //! next button
              CustomButton(
                text: AppStrings.buttonNext,
                onPressed: () {},
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
