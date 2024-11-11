import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.labelText,
      this.validator,
      this.hintText,
      this.prefixIcon,
      this.onTap});
  final String? labelText;
  final String? Function(String?)? validator;
  final String? hintText;
  final Widget? prefixIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTap: onTap,
        validator: validator,
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          errorBorder: getBorderStyle(),
          focusedErrorBorder: getBorderStyle(),
          labelText: labelText,
          labelStyle: CustomTextStyle.poppins500Style16,
          errorStyle: CustomTextStyle.poppins500Style16
              .copyWith(color: AppColors.redColor),
          hintStyle: CustomTextStyle.poppins500Style16,
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.greyColor,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
