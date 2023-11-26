import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/helper/app_assets.dart';
import 'package:ulearning_app/screens/sign_in/components/custom_circular_button.dart';
import 'package:ulearning_app/screens/sign_in/sign_in.dart';

class SignInSocialSectionWidget extends StatelessWidget {
  const SignInSocialSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCircularSocialButton(
            onTap: () {},
            img: AppAssets.googleIcon,
          ),
          CustomCircularSocialButton(
            onTap: () {},
            img: AppAssets.appleIcon,
          ),
          CustomCircularSocialButton(
            onTap: () {},
            img: AppAssets.facebookIcon,
          ),
        ],
      ),
    );
  }
}
