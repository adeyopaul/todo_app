import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/theme/topography.dart';

import '../../../core/constants/appSizes.dart';

class Onboardingscreen1 extends StatefulWidget {
  const Onboardingscreen1({super.key});

  @override
  State<Onboardingscreen1> createState() => _Onboardingscreen1State();
}

class _Onboardingscreen1State extends State<Onboardingscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.lg),
            child: Center(
              child: Image.asset('assets/Frame1.png', width: 0.6.sw),
            ),
          ),
          SizedBox(height: 100.h),
          Text('Manage your tasks', style: AppTextStyles.headline1),
          SizedBox(height: 50.h),
          Text(
            'You can easily manage all of your daily \n tasks in DoMe for free',
            textAlign: TextAlign.center,
            style: AppTextStyles.body1,
          ),
        ],
      ),
    );
  }
}
