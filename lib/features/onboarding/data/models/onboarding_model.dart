import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.image, required this.title, required this.subTitle});
}

final List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: AppAssets.imagesOnboarding1,
    title: AppStrings.onboardingTitleOne,
    subTitle: AppStrings.onboardingSubtitleOne,
  ),
  OnBoardingModel(
    image: AppAssets.imagesOnboarding2,
    title: AppStrings.onboardingTitleTwo,
    subTitle: AppStrings.onboardingSubtitleTwo,
  ),
  OnBoardingModel(
    image: AppAssets.imagesOnboarding3,
    title: AppStrings.onboardingTitleThree,
    subTitle: AppStrings.onboardingSubtitleThree,
  ),
];
