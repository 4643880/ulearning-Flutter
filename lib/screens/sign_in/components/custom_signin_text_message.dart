import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';

class SignInReusableTextWidget extends StatelessWidget {
  final bool center;
  final String message;
  const SignInReusableTextWidget({
    super.key,
    required this.message,
    this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    return center == true
        ? Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.h),
              child: Text(
                message,
                style: AppTextStyle.signInText,
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.only(bottom: 5.h),
            child: Text(
              message,
              style: AppTextStyle.signInText,
            ),
          );
  }
}
