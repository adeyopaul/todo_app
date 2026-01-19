import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/theme/themeData.dart';
import 'package:todoapp/presentation/screens/indexPage.dart';
import 'package:todoapp/presentation/screens/loginPage.dart';
import 'package:todoapp/presentation/screens/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 200)); // delay native splash hide
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil here
    return ScreenUtilInit(
      designSize: const Size(375, 812), // your Figma design frame
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'UpTodo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          home: child,
        );
      },
      child: const Splashscreen(),
    );
  }
}
