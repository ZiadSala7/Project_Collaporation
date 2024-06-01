import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HikalView extends StatelessWidget {
  const HikalView({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
        children: [
          CustomHikalSectionCard(
            title: 'General',
            imagePath: AppImages.,
          ),
        ]
      ),
    );
  }
}

class CustomHikalSectionCard extends StatelessWidget {
  const CustomHikalSectionCard({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      height: 200.h,
      width: 150.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 4, color: Colors.brown)),
      child: Column(
        children: [
          Image.asset(
            AppImages.imagesAlHekalEastHenyaLevel1Elevel11,
            height: 150.h,
            width: 150.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'North',
            style: Styless.textStyle14,
          )
        ],
      ),
    );
  }
}
