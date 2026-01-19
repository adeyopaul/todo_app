import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/theme/topography.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Image.asset('assets/HomeImage.png', width: 227.w, height: 227.h),
              Text('What do you want to do today?',
              style: AppTextStyles.body5,),
              Text('Tap + to add your tasks',
              style: AppTextStyles.body6,),
            ],
          ),
        ),
      ),
    );
  }
}
