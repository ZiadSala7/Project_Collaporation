import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/styles/fonts/font_family_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styless {
  static TextStyle textStyle24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
    color: AppColors.appBlack,
  );
  static TextStyle textStyle30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.appBlack,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
  );
  static TextStyle textStyle28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
    color: AppColors.appBlack,
  );
  static TextStyle textStyle22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
    color: AppColors.appBlack,
  );
  static TextStyle textStyle33 = TextStyle(
    fontSize: 33.sp,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
    color: AppColors.appBlack,
  );
  static TextStyle textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
    fontFamily: FontFamilyHelper.getLocalizedFamily(),
    color: AppColors.appBlack,
  );
}
