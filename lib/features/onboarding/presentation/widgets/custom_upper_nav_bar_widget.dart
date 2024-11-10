import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomUpperNavBar extends StatelessWidget {
  const CustomUpperNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(AppStrings.textButtonSkip,
          style: CustomTextStyle.poppins400Style16),
    );
  }
}
