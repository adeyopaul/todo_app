import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appColors.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/presentation/screens/loginPage.dart';

class Bottomappbarproperties extends StatelessWidget {
  final VoidCallback onTapped;
  final String title;
  final IconData tIcon;
  const Bottomappbarproperties({
    super.key,
    required this.onTapped,
    required this.title,
    required this.tIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Column(
        children: [
          Icon(tIcon, size: 25.sp, color: AppColors.textHintLight,),
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.xs),
            child: Text(title, style: TextStyle(
              color: AppColors.textHintLight,
              fontSize: 12.sp
            ),),
          ),
        ],
      ),
    );
  }
}
