import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';

AppBar signInAppBar() {
  return AppBar(
    centerTitle: true,
    surfaceTintColor: AppColors.primaryBackground,
    title: Text(
      AppTexts.login,
      style: AppTextStyle.bodyNormalRegular,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        height: 1.0.h,
      ),
    ),
  );
}
