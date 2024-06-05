import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/features/home/presentation/widgets/list_wheel_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appGrey1,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 330.h,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 7,
          builder: (context, index) => ListWheelChild(index: index),
        ),
      ),
    );
  }
}
