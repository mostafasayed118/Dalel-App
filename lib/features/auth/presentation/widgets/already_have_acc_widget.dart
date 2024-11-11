import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccWidget extends StatelessWidget {
  const AlreadyHaveAccWidget(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: CustomTextStyle.poppins400Style16
                  .copyWith(fontSize: 13, color: AppColors.deepGreyColor),
            ),
            TextSpan(
              text: text2,
              style: CustomTextStyle.poppins400Style16.copyWith(
                color: AppColors.greyColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
