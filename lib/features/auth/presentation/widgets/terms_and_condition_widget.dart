import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:dalel_app/features/auth/presentation/widgets/custom_check_box_widget.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget(
      {super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomCheckbox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: text1,
                  style: CustomTextStyle.poppins400Style16.copyWith(
                    fontSize: 12,
                  )),
              TextSpan(
                  text: text2,
                  style: CustomTextStyle.poppins400Style16.copyWith(
                      color: AppColors.deepGreyColor,
                      fontSize: 12,
                      decoration: TextDecoration.underline)),
            ],
          ),
        ),
      ],
    );
  }
}
