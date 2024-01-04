import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/constants.dart';

class AppTextStyle {
  static final TextStyle headingH5 = TextStyle(
    fontSize: kFontSize24,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle headingH4 = TextStyle(
    fontSize: kFontSize32,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle headingH6 = TextStyle(
    fontSize: kFontSize20,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );

  static final TextStyle captionRegular = TextStyle(
    fontSize: kFontSize12,
    fontWeight: FontWeight.w400,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );

  //
  static final TextStyle captionMedium = TextStyle(
    fontSize: kFontSize12,
    fontWeight: FontWeight.w500,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle captionBold = TextStyle(
    fontSize: kFontSize12,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );

  static final TextStyle bodyNormalRegular = TextStyle(
    fontSize: kFontSize16,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryText,
    fontFamily: kAvenir,
  );
  static final TextStyle bodyNormalBold = TextStyle(
    fontSize: kFontSize16,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle bodyNormalMedium = TextStyle(
    fontSize: kFontSize16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle bodySmallRegular = TextStyle(
    fontSize: kFontSize14,
    fontWeight: FontWeight.w400,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );

  static final TextStyle bodySmallMedium = TextStyle(
    fontSize: kFontSize14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle bodySmallBold = TextStyle(
    fontSize: kFontSize14,
    fontWeight: FontWeight.w700,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );
  static final TextStyle miscBadge = TextStyle(
    fontSize: kFontSize11,
    fontWeight: FontWeight.w600,
    color: AppColors.primary_bg,
    fontFamily: kAvenir,
  );

  static final TextStyle signInText = TextStyle(
    fontSize: kFontSize14,
    color: Colors.grey.withOpacity(0.5),
    fontWeight: FontWeight.normal,
    fontFamily: kAvenir,
  );

  static final TextStyle textFieldText = TextStyle(
    color: AppColors.black,
    fontFamily: kAvenir,
    fontWeight: FontWeight.normal,
    fontSize: kFontSize14,
  );

  static final TextStyle forgotPassword = TextStyle(
    color: AppColors.black,
    decoration: TextDecoration.underline,
    decorationColor: Colors.blue,
    // decorationColor: AppColors.primaryElement,
    fontSize: kFontSize12,
    fontFamily: kAvenir,
  );
}
