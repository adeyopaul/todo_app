import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/core/constants/appColors.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/core/theme/topography.dart';
import 'package:todoapp/presentation/screens/onboardingScreens/onBoardingScreen1.dart';
import 'package:todoapp/presentation/screens/onboardingScreens/onBoardingScreen2.dart';
import 'package:todoapp/presentation/screens/onboardingScreens/onBoardingScreen3.dart';
import 'package:todoapp/presentation/screens/startUp.dart';
import 'package:todoapp/presentation/widgets/elevatedButton.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController onBoardingController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.md),
          child: Stack(
            children: [

              //Page View
              PageView(
                controller: onBoardingController,
                onPageChanged: (index){
                  setState(() {
                    isLastPage = (index == 2);
                  });
                },
                children: [
                  Onboardingscreen1(),
                  Onboardingscreen2(),
                  Onboardingscreen3(),
                ],
              ),

              //Skip
              Positioned(
                top: 0,
                child: GestureDetector(
                  onTap: (){
                    onBoardingController.jumpToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),

              //Buttons row
              Positioned(
                top: 630.h,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //Back Button
                    GestureDetector(
                      onTap: () {
                        onBoardingController.previousPage(
                          duration: Duration(milliseconds: 3),
                          curve: Curves.decelerate,
                        );
                      },
                      child: Text(
                        'BACK',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),

                    //Next or Done Button
                    isLastPage ? Elevatedbutton(
                      buttonTitle: 'DONE',
                      isEmpty: false,
                      buttonFunction: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Startup()));
                      },
                    ) :
                    Elevatedbutton(
                      isFilled: true,
                      isEmpty: false,
                      buttonTitle: 'NEXT',
                      buttonFunction: () {
                        onBoardingController.nextPage(
                          duration: Duration(microseconds: 3),
                          curve: Curves.bounceInOut,
                        );
                      },
                    ),

                  ],
                ),
              ),

              //SmoothPage Indicator Widget
              Positioned(
                top: 365.h,
                left: 115.w,
                child: Container(
                  child: SmoothPageIndicator(
                    controller: onBoardingController,
                    count: 3,
                    effect: SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 30.w,
                      dotHeight: 6.h,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.textPrimaryDark,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // PageView(
        //   children: [
        //     Container(
        //       child: Column(
        //         children: [
        //           Image.asset('assets/Frame1.png', width: 300,),
        //           Text('Manage your tasks'),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       child: Column(
        //         children: [
        //           Image.asset('assets/Frame1.png'),
        //           Text('Manage your tasks'),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       child: Column(
        //         children: [
        //           Image.asset('assets/Frame1.png'),
        //           Text('Manage your tasks'),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
