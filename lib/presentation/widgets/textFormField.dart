import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appSizes.dart';

import '../../core/constants/appColors.dart';
import '../../core/theme/topography.dart';

class Textformfield extends StatelessWidget {
  final String title;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool taskInput;

  const Textformfield({
    super.key,
    required this.title,
    this.isPassword = false,
    required this.controller,
    this.keyboardType,
    this.focusNode,
    this.taskInput = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      child: TextFormField(
        focusNode: focusNode,
        keyboardType: keyboardType,
        controller: controller,
        style: AppTextStyles.body4,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: isPassword
              ? TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)
              : AppTextStyles.body3,
          border: taskInput ? InputBorder.none : OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.small),
            borderSide: BorderSide(color: AppColors.primary),
          ),
          enabledBorder: taskInput ? InputBorder.none : OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.small),
            borderSide: BorderSide(width: 2, color: AppColors.inputBorderDark),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppRadius.small),
            borderSide: BorderSide(width: 2, color: AppColors.inputBorderDark),
          ),
        ),
      ),
    );
  }
}
