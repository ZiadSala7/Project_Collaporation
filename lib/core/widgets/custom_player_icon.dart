import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayerIcon extends StatelessWidget {
  const CustomPlayerIcon(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: AppColors.mainColor,
        size: 32.sp,
      ),
    );
  }
}
