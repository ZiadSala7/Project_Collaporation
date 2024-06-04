import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/section_details/presentation/view/general_hikal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HikalView extends StatelessWidget {
  const HikalView({super.key, required this.section});
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: ListView(
        children: [
          CustomHikalSectionCard(
            title: 'General',
            imagePath: section.images[66],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GeneralHikalView(
                    images: section.images.sublist(67),
                  ),
                ),
              );
            },
          ),
          CustomHikalSectionCard(
            title: 'North',
            imagePath: section.images[42],
            onTap: () {},
          ),
          CustomHikalSectionCard(
            title: 'South',
            imagePath: section.images[63],
            onTap: () {},
          ),
          CustomHikalSectionCard(
            title: 'East',
            imagePath: section.images[17],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CustomHikalSectionCard extends StatelessWidget {
  const CustomHikalSectionCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });
  final void Function()? onTap;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 4, color: Colors.brown),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1.r,
              blurRadius: 1.r,
              offset: Offset(0, 1.h),
            ),
          ],
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 80.h,
                width: 80.w,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              style: Styless.textStyle14,
            ),
          ],
        ),
      ),
    );
  }
}
