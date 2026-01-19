import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/appSizes.dart';
import '../../../core/theme/topography.dart';

class Onboardingscreen3 extends StatefulWidget {
  const Onboardingscreen3({super.key});

  @override
  State<Onboardingscreen3> createState() => _Onboardingscreen3State();
}

class _Onboardingscreen3State extends State<Onboardingscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.lg),
            child: Center(
              child: Image.asset('assets/Frame3.png', width: 0.75.sw),
            ),
          ),
          SizedBox(height: 100.h),
          Text('Organize your tasks', style: AppTextStyles.headline1),
          SizedBox(height: 50.h),
          Text(
            'You can organize your daily tasks by \n adding your tasks into separate categories',
            textAlign: TextAlign.center,
            style: AppTextStyles.body1,
          ),
        ],
      ),
    );
  }
}
