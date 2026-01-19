import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/constants/appColors.dart';
import 'package:todoapp/core/constants/appSizes.dart';
import 'package:todoapp/core/theme/topography.dart';
import 'package:todoapp/presentation/screens/navbar/focus.dart';
import 'package:todoapp/presentation/screens/navbar/index.dart';
import 'package:todoapp/presentation/screens/navbar/profile.dart';
import 'package:todoapp/presentation/widgets/bottomAppBarProperties.dart';
import 'package:todoapp/presentation/widgets/textFormField.dart';

import 'navbar/calendar.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  final List<Widget> pages = [Index(), Calendar(), Focuspage(), Profile()];
  int currentIndex = 0;

  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final FocusNode _taskTitleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  void dispose() {
    taskTitleController.dispose();
    descriptionController.dispose();
    _taskTitleFocusNode.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }

  void onTapFunc(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSpacing.md),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/profile.jpeg'),
            ),
          ),
        ],
        elevation: 0,
      ),
      drawer: Drawer(),
      body: pages[currentIndex],
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (context) {
                // WidgetsBinding.instance.addPostFrameCallback((_) {
                //   _taskTitleFocusNode.requestFocus();
                // });
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(AppSpacing.lg),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: AppSpacing.md),
                            child: Text(
                              'Add Task',
                              style: AppTextStyles.body5.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Textformfield(
                            focusNode: _taskTitleFocusNode,
                            keyboardType: TextInputType.text,
                            title: 'Do math homework',
                            controller: taskTitleController,
                            taskInput: true,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: AppSpacing.md),
                            child: Textformfield(
                              focusNode: _descriptionFocusNode,
                              keyboardType: TextInputType.text,
                              title: 'Description',
                              controller: descriptionController,
                              taskInput: true,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.timer_outlined,
                                      size: 30,
                                      color: AppColors.textHintLight,
                                    ),
                                  ),
                                  SizedBox(width: 30.w),
                                  Icon(
                                    Icons.local_offer_outlined,
                                    size: 30,
                                    color: AppColors.textHintLight,
                                  ),
                                  SizedBox(width: 30.w),
                                  Icon(
                                    Icons.flag_outlined,
                                    size: 30,
                                    color: AppColors.textHintLight,
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.send_outlined,
                                size: 30,
                                color: AppColors.textHintLight,
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          shape: CircleBorder(),
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 75.h,
        notchMargin: 0,
        shape: CircularNotchedRectangle(),
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Bottomappbarproperties(
                onTapped: () => onTapFunc(0),
                title: 'Home',
                tIcon: Icons.home,
              ),
              Bottomappbarproperties(
                onTapped: () => onTapFunc(1),
                title: 'Calendar',
                tIcon: Icons.calendar_month_outlined,
              ),
              SizedBox(width: 25.w),
              Bottomappbarproperties(
                onTapped: () => onTapFunc(2),
                title: 'Focuse',
                tIcon: Icons.access_time,
              ),
              Bottomappbarproperties(
                onTapped: () => onTapFunc(3),
                title: 'Profile',
                tIcon: Icons.person_outline_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
