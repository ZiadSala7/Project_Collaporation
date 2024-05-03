import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLinearButton extends StatelessWidget {
  const CustomLinearButton({
    required this.onPressed,
    required this.child,
    this.height,
    this.width,
    super.key,
  });
  final VoidCallback onPressed;
  final Widget child;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.mainColor,
      onTap: onPressed,
      child: Container(
        height: height ?? 44.h,
        width: width ?? 44.w,
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
