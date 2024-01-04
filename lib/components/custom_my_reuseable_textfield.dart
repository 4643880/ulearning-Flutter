import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/components/custom_spacer.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_signin_text_message.dart';

class ReuseableTextField extends StatelessWidget {
  final String outerLabel;
  final String hintText;
  final String iconName;
  final String type;

  const ReuseableTextField({
    super.key,
    required this.outerLabel,
    required this.hintText,
    required this.iconName,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignInReusableTextWidget(
          message: outerLabel,
        ),
        VerticalSpacer(space: 5.h),
        Container(
          width: 325.w,
          height: 50.h,
          margin: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15.w),
            ),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 16.w,
                margin: EdgeInsets.only(left: 17.w),
                height: 16.w,
                child: Image.asset(iconName),
              ),
              SizedBox(
                width: 270.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  style: AppTextStyle.textFieldText,
                  obscureText: type == AppTexts.password ? true : false,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: hintText,
                    // border: InputBorder.none,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
