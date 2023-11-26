import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularSocialButton extends StatelessWidget {
  final String img;
  final Function() onTap;
  const CustomCircularSocialButton({
    super.key,
    required this.img,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.w,
        width: 40.w,
        child: Image.asset(img),
      ),
    );
  }
}
