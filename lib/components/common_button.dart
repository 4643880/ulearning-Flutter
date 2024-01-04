import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool isFill;
  final Color? textColor, filledColor, borderColor;
  final void Function() onPressed;
  final bool? isCenter;
  bool buttonShouldDisable = false;
  final TextAlign? textAlign;
  final Widget? suffixWidget;
  final double? width;
  final TextStyle? buttonTextStyle;
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;

  CustomButton({
    Key? key,
    required this.title,
    required this.isFill,
    this.textColor,
    this.filledColor,
    this.isCenter,
    this.borderColor,
    this.textAlign,
    this.suffixWidget,
    this.padding,
    required this.onPressed,
    required this.buttonShouldDisable,
    this.buttonTextStyle,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        padding: padding ??
            MaterialStateProperty.all(
              EdgeInsets.only(
                right: 16.w,
                left: 16.w,
                top: 12.h,
                bottom: 12.h,
              ),
            ),
        //Fixed Size set
        //fixedSize: MaterialStateProperty.all(Size(width ?? double.infinity, 48.h)),
        backgroundColor: isFill
            ? (buttonShouldDisable)
                ? MaterialStateProperty.all(AppColors.disable)
                : MaterialStateProperty.all(filledColor ?? AppColors.primary_bg)
            : MaterialStateProperty.all(AppColors.disable),
        splashFactory: buttonShouldDisable ? NoSplash.splashFactory : null,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.r),
            side: BorderSide(
              color: isFill
                  ? (buttonShouldDisable)
                      ? AppColors.disable
                      : borderColor ?? Colors.transparent
                  : Colors.white,
            ),
          ),
        ),
      ),
      onPressed: buttonShouldDisable ? onPressed : onPressed,
      child: Row(
        mainAxisSize: isCenter == true ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: isCenter == true
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          (suffixWidget != null)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      textAlign: textAlign ?? TextAlign.start,
                      style: buttonTextStyle ??
                          AppTextStyle.bodyNormalBold.copyWith(
                            color: buttonShouldDisable
                                ? AppColors.white
                                : textColor ?? AppColors.white,
                          ),
                    ),
                    suffixWidget ?? const SizedBox(),
                  ],
                )
              : Text(
                  title,
                  textAlign: textAlign ?? TextAlign.start,
                  style: buttonTextStyle ??
                      AppTextStyle.bodyNormalBold.copyWith(
                        color: buttonShouldDisable
                            ? AppColors.white
                            : textColor ?? AppColors.white,
                      ),
                ),
        ],
      ),
    );
  }
}
