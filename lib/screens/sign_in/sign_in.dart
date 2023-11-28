import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/components/custom_spacer.dart';
import 'package:ulearning_app/components/custom_text_field_with_lable.dart';
import 'package:ulearning_app/helper/app_assets.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';
import 'package:ulearning_app/screens/sign_in/components/app_bar.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_signin_text_message.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_social_section_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: signInAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ================================================
                // Social Section
                // ================================================
                const SignInSocialSectionWidget(),
                // ================================================
                // Text Message
                // ================================================
                SignInReusableTextWidget(
                  message: AppTexts.signInMsg,
                  center: true,
                ),
                // ================================================
                // Text Message
                // ================================================
                VerticalSpacer(space: 66.h),
                // ================================================
                // Input Fields
                // ================================================
                const ReuseableTextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReuseableTextField extends StatelessWidget {
  const ReuseableTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SignInReusableTextWidget(
            message: AppTexts.email,
          ),
          Container(
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15.w),
              ),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 16.w,
                  margin: EdgeInsets.only(left: 17.w),
                  height: 16.w,
                  child: Image.asset(AppAssets.personIcon),
                ),
                SizedBox(
                  width: 270.w,
                  height: 50.h,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "Enter your email address",
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
      ),
    );
  }
}
