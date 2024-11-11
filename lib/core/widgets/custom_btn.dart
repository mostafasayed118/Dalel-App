import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primaryColor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.primaryColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(text,
          style: CustomTextStyle.poppins500Style24.copyWith(
            color: AppColors.whiteColor,
          )),
    );
  }
}
