import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class CustomImageOnBoarding extends StatelessWidget {
  final int index;

  const CustomImageOnBoarding({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 290,
        width: 343,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(onBoardingList[index].image),
            fit: BoxFit.fill,
          ),
        ));
  }
}
