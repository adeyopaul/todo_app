import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appColors.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/core/theme/topography.dart';
import 'package:todoapp/presentation/screens/indexPage.dart';
import 'package:todoapp/presentation/screens/signUp.dart';
import 'package:todoapp/presentation/screens/splashScreen.dart';
import 'package:todoapp/presentation/widgets/elevatedButton.dart';
import 'package:todoapp/presentation/widgets/textFormField.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isEmpty = true;

  void checkField(){
    setState(() {
      isEmpty = userNameController.text.isEmpty || passwordController.text.isEmpty;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userNameController.addListener(checkField);
    passwordController.addListener(checkField);
  }

  void validateLoginNull(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Column(
          children: [
            Icon(Icons.error_outline, size: 60.sp,),
            SizedBox(
              height: 20.h,
            ),
            Text('Kindly Fill out your Username and Password',
            textAlign: TextAlign.center,),
          ],
        ),
        titleTextStyle: TextStyle(
          fontSize: 16.sp,
          height: 1.5.h,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Login Text
            Padding(
              padding: EdgeInsets.only(
                top: AppSpacing.sm,
                bottom: AppSpacing.xl,
              ),
              child: Text('Login', style: AppTextStyles.headline1),
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
      
            SizedBox(height: 70.h),
      
            Elevatedbutton(
              buttonTitle: 'Login',
              buttonFunction: () {
                isEmpty ? validateLoginNull() : Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Indexpage()), (Route<dynamic> route) => false,);
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
              buttonTitle: 'Login with Google',
              buttonFunction: () {},
              buttonWidth: double.infinity,
              isFilled: false,
              imageIcon: 'assets/googleLogo.png',
            ),
      
            SizedBox(height: 20.h),
      
            Elevatedbutton(
              buttonTitle: 'Login with Apple',
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
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
                // TextButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Register',
                //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                //   ),
                // ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text('Register',  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
