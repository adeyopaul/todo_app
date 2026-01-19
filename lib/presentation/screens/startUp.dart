import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/core/theme/topography.dart';
import 'package:todoapp/presentation/screens/signUp.dart';
import 'package:todoapp/presentation/widgets/elevatedButton.dart';

import 'loginPage.dart';

class Startup extends StatefulWidget {
  const Startup({super.key});

  @override
  State<Startup> createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //Welcome to UpTodo
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.lg),
              child: Text('Welcome to UpTodo',
                style: AppTextStyles.headline1,
              ),
            ),

            //Submessage
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.md),
              child: Text(
                'Please Login to your account or create \n new account to continue',
                textAlign: TextAlign.center,
                style: AppTextStyles.body1,
              ),
            ),
            Spacer(),

            //LoginButton
            Elevatedbutton(buttonTitle: 'LOGIN', buttonFunction: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()));
            }, buttonWidth: 0.9.sw,),
            SizedBox(height: 30.h,),

            //Create account button
            Elevatedbutton(buttonTitle: 'CREATE ACCOUNT', buttonFunction: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
            }, buttonWidth: 0.9.sw, isFilled: false,),
            SizedBox(height: 70.h,),
          ],
        ),
      ),
    );
  }
}
