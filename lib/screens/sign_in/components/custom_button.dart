import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color? color;
  final Color? textColor;

  const CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    this.color = AppColors.primaryElement,
    this.textColor = AppColors.primaryBackground,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 325.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: text.toLowerCase() == "register"
                ? AppColors.primaryFourthElementText
                : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.grey.withOpacity(0.1),
            ),
          ],
        ),
        child: Text(
          text,
          style: AppTextStyle.bodyNormalRegular.copyWith(
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
