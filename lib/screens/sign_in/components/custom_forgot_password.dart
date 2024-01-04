import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';

class ForgotPasswordWidget extends StatelessWidget {
  final Function() onTap;
  const ForgotPasswordWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      height: 44.h,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          AppTexts.forgotPassword,
          style: AppTextStyle.forgotPassword,
        ),
      ),
    );
  }
}
