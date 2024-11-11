import 'dart:developer';

import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/core/widgets/custom_text_btn.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/functions/onboarding_save.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentPage, required this.controller});
  final int currentPage;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentPage == onBoardingList.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.buttonCreateAccount,
            onPressed: () {
              onBoardingVisited();
              log("onboarding visited From Create Account");
              customNavigatePushReplacement(context, "/signup");
            },
          ),
          const SizedBox(height: 8),
          CustomTextButton(
            text: AppStrings.textButtonLoginNow,
            onPressed: () {
              onBoardingVisited();

              log("onboarding visited From Login Now");
              customNavigatePushReplacement(context, "/signin");
            },
          ),
        ],
      );
    } else {
      return CustomButton(
        text: AppStrings.buttonNext,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        },
      );
    }
  }
}
