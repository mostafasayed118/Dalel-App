import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/widgets/custom_btn.dart';
import 'package:dalel_app/core/widgets/custom_text_form_field.dart';
import 'package:dalel_app/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:dalel_app/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/already_have_acc_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 110),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcomeTitle),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 40),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                hintText: AppStrings.hintFirstName,
                labelText: AppStrings.labelFirstName,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                hintText: AppStrings.hintLastName,
                labelText: AppStrings.labelLastName,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                hintText: AppStrings.hintEmail,
                labelText: AppStrings.labelEmail,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            const SliverToBoxAdapter(
              child: CustomTextFormField(
                hintText: AppStrings.hintPassword,
                labelText: AppStrings.labelPassword,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: TermsAndConditionWidget(
                text1: AppStrings.iHaveAgree,
                text2: AppStrings.textButtonTerms,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 88),
            ),
            SliverToBoxAdapter(
              child:
                  CustomButton(text: AppStrings.buttonSignUp, onPressed: () {}),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            const SliverToBoxAdapter(
              child: AlreadyHaveAccWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.textButtonSignIn),
            ),
          ],
        ),
      )),
    );
  }
}
