import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/core/widgets/custom_text_btn.dart';
import 'package:flutter/material.dart';

class CustomUpperNavBar extends StatelessWidget {
  const CustomUpperNavBar({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerRight,
      child: CustomTextButton(text: AppStrings.textButtonSkip,
          style: CustomTextStyle.poppins400Style16, onPressed: onPressed),
    );
  }
}
