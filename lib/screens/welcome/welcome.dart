import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/components/custom_spacer.dart';
import 'package:ulearning_app/helper/app_assets.dart';
import 'package:ulearning_app/helper/app_texts.dart';
import 'package:ulearning_app/main.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/screens/welcome/bloc/welcome_states.dart';
import 'dart:developer' as devtools show log;

class WelcomeScreen extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
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
                    controller: pageController,
                    onPageChanged: (value) {
                      state.page = value;
                      BlocProvider.of<WelcomeBloc>(context).add(WelcomeEvent());
                      devtools.log(value.toString());
                    },
                    children: [
                      onboardingPage(
                        context,
                        index: 0,
                        title: AppTexts.onBoardOneTitle,
                        subtitle: AppTexts.onBoardOneSubtitle,
                        img: AppAssets.onboarding1,
                        buttonText: AppTexts.onBoardOneButton,
                      ),
                      onboardingPage(
                        context,
                        index: 1,
                        title: AppTexts.onBoardTwoTitle,
                        subtitle: AppTexts.onBoardTwoSubtitle,
                        img: AppAssets.onboarding2,
                        buttonText: AppTexts.onBoardTwoButton,
                      ),
                      onboardingPage(
                        context,
                        index: 2,
                        title: AppTexts.onBoardThreeTitle,
                        subtitle: AppTexts.onBoardThreeSubtitle,
                        img: AppAssets.onboarding3,
                        buttonText: AppTexts.onBoardThreeButton,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 100.h,
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: state.page,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        activeSize: const Size(33, 8.0),
                        size: const Size.square(8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(05),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget onboardingPage(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String img,
    required String buttonText,
    required int index,
  }) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
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
        GestureDetector(
          onTap: () {
            if (index < 2) {
              // devtools.log(index.toString());
              pageController.animateToPage(
                index + 1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
            } else {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const MyHomePage(),
              // ));
              Navigator.of(context).pushNamedAndRemoveUntil(
                "/signInScreen",
                (route) => false,
              );
            }
          },
          child: Container(
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
          ),
        )
      ],
    );
  }
}
