import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appColors.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/core/theme/topography.dart';
import 'package:todoapp/presentation/screens/indexPage.dart';
import 'package:todoapp/presentation/screens/splashScreen.dart';
import 'package:todoapp/presentation/widgets/elevatedButton.dart';
import 'package:todoapp/presentation/widgets/textFormField.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isEmpty = true;

  void checkField() {
    setState(() {
      isEmpty =
          userNameController.text.isEmpty ||
          passwordController.text.isEmpty ||
          confirmPasswordController.text.isEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userNameController.addListener(checkField);
    passwordController.addListener(checkField);
    confirmPasswordController.addListener(checkField);
  }

  void validateLoginNull() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
              Icon(Icons.error_outline, size: 60.sp),
              SizedBox(height: 20.h),
              Text('Kindly Create Your Account', textAlign: TextAlign.center),
            ],
          ),
          titleTextStyle: TextStyle(fontSize: 16.sp, height: 1.5.h),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Register Text
            Padding(
              padding: EdgeInsets.only(bottom: AppSpacing.md),
              child: Text('Register', style: AppTextStyles.headline1),
            ),

            //Username TextFormField
            Padding(
              padding: EdgeInsets.only(bottom: AppSpacing.sm),
              child: Text('Username', style: AppTextStyles.body4),
            ),
            Textformfield(
              title: 'Enter your Username',
              controller: userNameController,
              isPassword: false,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(bottom: AppSpacing.sm),
              child: Text('Password', style: AppTextStyles.body4),
            ),
            Textformfield(
              title: '............',
              controller: passwordController,
              isPassword: true,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(bottom: AppSpacing.sm),
              child: Text('Confirm Password', style: AppTextStyles.body4),
            ),
            Textformfield(
              title: '............',
              controller: confirmPasswordController,
              isPassword: true,
            ),

            SizedBox(height: 40.h),

            Elevatedbutton(
              buttonTitle: 'Register',
              buttonFunction: () {
                isEmpty
                    ? validateLoginNull()
                    : Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Indexpage()),
                        (Route<dynamic> route) => false,
                      );
              },
              isEmpty: isEmpty,
              buttonWidth: double.infinity,
            ),

            SizedBox(height: 30.h),

            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 3, color: AppColors.dividerDark),
                ),
                Text('  or  '),
                Expanded(
                  child: Divider(thickness: 3, color: AppColors.dividerDark),
                ),
              ],
            ),

            SizedBox(height: 30.h),

            Elevatedbutton(
              buttonTitle: 'Register with Google',
              buttonFunction: () {},
              buttonWidth: double.infinity,
              isFilled: false,
              imageIcon: 'assets/googleLogo.png',
            ),

            SizedBox(height: 20.h),

            Elevatedbutton(
              buttonTitle: 'Register with Apple',
              buttonFunction: () {},
              buttonWidth: double.infinity,
              isFilled: false,
              imageIcon: 'assets/apple.png',
            ),

            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
