import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  //! -----------------  Poppins  -----------------
  static const TextStyle poppins600Style28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
    fontFamily: "Poppins",
  );
  static const TextStyle poppins500Style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
    fontFamily: "Poppins",
  );
  static const TextStyle poppins500Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.deepGreyColor,
    fontFamily: "Poppins",
  );
  static const TextStyle poppins300Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.blackColor,
    fontFamily: "Poppins",
  );
  static const TextStyle poppins400Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    fontFamily: "Poppins",
  );
  //! ----------------- Pacifico -----------------
  static const TextStyle pacifico400Style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrownColor,
    fontFamily: "Pacifico",
  );
}
