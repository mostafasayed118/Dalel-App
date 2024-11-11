import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.style,
  });
  final String text;
  final VoidCallback onPressed;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: style ??
            CustomTextStyle.poppins400Style16.copyWith(
              color: AppColors.deepGreyColor,
              decoration: TextDecoration.underline,
            ),
      ),
    );
  }
}
