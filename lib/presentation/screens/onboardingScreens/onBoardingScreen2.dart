import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/appSizes.dart';
import '../../../core/theme/topography.dart';

class Onboardingscreen2 extends StatefulWidget {
  const Onboardingscreen2({super.key});

  @override
  State<Onboardingscreen2> createState() => _Onboardingscreen2State();
}

class _Onboardingscreen2State extends State<Onboardingscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.lg),
            child: Center(
              child: Image.asset('assets/Frame2.png', width: 0.7.sw),
            ),
          ),
          SizedBox(height: 100.h),
          Text('Create daily routine', style: AppTextStyles.headline1),
          SizedBox(height: 50.h),
          Text(
            'In Uptodo you can create your \n personalized routine to stay productive',
            textAlign: TextAlign.center,
            style: AppTextStyles.body1,
          ),
        ],
      ),
    );
  }
}
