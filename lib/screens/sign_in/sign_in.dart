import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/components/common_button.dart';
import 'package:ulearning_app/components/custom_my_reuseable_textfield.dart';
import 'package:ulearning_app/components/custom_spacer.dart';
import 'package:ulearning_app/helper/app_assets.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';
import 'package:ulearning_app/helper/app_texts.dart';
import 'package:ulearning_app/helper/constants.dart';
import 'package:ulearning_app/screens/sign_in/components/app_bar.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_button.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_forgot_password.dart';
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                  // Space
                  // ================================================
                  VerticalSpacer(space: 66.h),
                  // ================================================
                  // Input Fields Email & Password
                  // ================================================
                  ReuseableTextField(
                    hintText: AppTexts.emailHint,
                    outerLabel: AppTexts.email,
                    iconName: AppAssets.personIcon,
                    type: AppTexts.email,
                  ),
                  ReuseableTextField(
                    hintText: AppTexts.passwordHint,
                    outerLabel: AppTexts.password,
                    iconName: AppAssets.lockIcon,
                    type: AppTexts.password,
                  ),
                  // ================================================
                  // Forgot Password
                  // ================================================
                  ForgotPasswordWidget(
                    onTap: () {},
                  ),
                  // ================================================
                  // Space
                  // ================================================
                  VerticalSpacer(space: 40.h),
                  // ================================================
                  // Login & Register
                  // ================================================
                  CustomButtonWidget(
                    onTap: () {},
                    text: AppTexts.login,
                  ),
                  VerticalSpacer(space: 20.h),
                  CustomButtonWidget(
                    onTap: () {},
                    text: AppTexts.register,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
