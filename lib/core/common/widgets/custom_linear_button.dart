import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLinearButton extends StatelessWidget {
  const CustomLinearButton({
    required this.onPressed,
    required this.child,
   
    super.key,
  });
  final VoidCallback onPressed;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.mainColor,
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          gradient: const LinearGradient(
            colors: [
              AppColors.mainColor,
              AppColors.secondryColor,
            ],
            begin: Alignment(0.46, -0.89),
            end: Alignment(-0.46, 0.89),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
