import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HikalView extends StatelessWidget {
  const HikalView({super.key, required this.section});
  final SectionCardModels section;
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
              imagePath: section.images[66],
            ),
            CustomHikalSectionCard(
              title: 'North',
              imagePath: section.images[42],
            ),
            CustomHikalSectionCard(
              title: 'South',
              imagePath: section.images[63],
            ),
            CustomHikalSectionCard(
              title: 'East',
              imagePath: section.images[17],
            ),
          ]),
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
      height: 250.h,
      width: 150.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 4, color: Colors.brown),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150.h,
            width: 150.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title,
            style: Styless.textStyle14,
          )
        ],
      ),
    );
  }
}
