import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/components/custom_spacer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 40.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: const [
                  OnboardingPage(
                    title: "First See Learning",
                    subtitle:
                        "Forget about a for of paper all knowledge in one learning!",
                    img: "",
                    buttonText: "Next",
                  ),
                  OnboardingPage(
                    title: "Connect with Everyone",
                    subtitle:
                        "Always keep in touch with your tutor and friend. Let's get connected!",
                    img: "",
                    buttonText: "Next",
                  ),
                  OnboardingPage(
                    title: "Always Fascinated Learning",
                    subtitle:
                        "Anywhere, anytime. The time is at our descretion so study whenever you want.",
                    img: "",
                    buttonText: "get started",
                  ),
                ],
              ),
              Positioned(
                bottom: 100.h,
                child: DotsIndicator(
                  dotsCount: 3,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.blue,
                    activeSize: const Size(10, 8.0),
                    size: const Size.square(8.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(05),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String img;
  final String buttonText;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.img,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: const Text("Image 1 will be here"),
        ),
        SizedBox(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        VerticalSpacer(space: 100.h),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 25.w,
          ),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(
              15.w,
            ),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        )
      ],
    );
  }
}
