import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appSizes.dart';

import '../../core/constants/appColors.dart';

class Elevatedbutton extends StatelessWidget {
  final String buttonTitle;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? color;
  final bool isFilled;
  final bool isEmpty;
  final String? imageIcon;
  final VoidCallback buttonFunction;

  const Elevatedbutton({
    super.key,
    required this.buttonTitle,
    required this.buttonFunction,
    this.buttonWidth,
    this.buttonHeight,
    this.isFilled = true,
    this.color,
    this.isEmpty = false,
    this.imageIcon,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor;
    if (isEmpty && isFilled) {
      backgroundColor = Color(0xFF4C4C7C);
    } else if (isFilled && !isEmpty) {
      backgroundColor = color ?? AppColors.primary;
    } else {
      backgroundColor = Colors.transparent;
    }
    final Color titleColor;
    if (isEmpty && isFilled) {
      titleColor = AppColors.textHintLight;
    } else if (isFilled && !isEmpty) {
      titleColor = color ?? AppColors.textPrimaryDark;
    } else {
      titleColor = AppColors.textSecondaryDark;
    }
    final Color borderColor = isFilled
        ? Colors.transparent
        : (color ?? AppColors.primary);
    final scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    return Container(
      width: buttonWidth,
      height: 50.h,
      child: ElevatedButton(
        onPressed: buttonFunction,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppRadius.small),
            ),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(imageIcon != null)...[
                Image.asset(imageIcon!, height: 20.h, width: 20.w,),
                SizedBox(width: 8.w,)
              ],
              Text(buttonTitle, style: TextStyle(color: titleColor)),
            ],
          ),
        ),
      ),
    );
  }
}
