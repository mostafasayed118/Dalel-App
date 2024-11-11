import 'dart:developer';

import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/features/onboarding/presentation/views/functions/onboarding_save.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/get_buttons.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/obboarding_body_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_upper_nav_bar_widget.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              //! skip button
              const SizedBox(height: 40),
              CustomUpperNavBar(
                onPressed: () {
                  onBoardingVisited();

                  log("onboarding visited From Skip Button");
                  customNavigatePushReplacement(context, "/signup");
                },
              ),
              const SizedBox(height: 26),
              OnBoardingBody(
                  controller: controller,
                  onPageChanged: (onPage) {
                    setState(() {
                      currentPage = onPage;
                    });
                  }),
              const SizedBox(height: 90),
              //! next button
              GetButtons(currentPage: currentPage, controller: controller),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
