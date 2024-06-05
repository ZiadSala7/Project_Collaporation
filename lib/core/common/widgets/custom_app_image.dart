import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppImage extends StatelessWidget {
  const CustomAppImage({
    super.key,
    required this.imgPath,
  });
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        imgPath,
        fit: BoxFit.fill,
        height: 250.h,
        width: 320.w,
      ),
    );
  }
}