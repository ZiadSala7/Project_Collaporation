import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/section_details/presentation/widgets/image_text_body.dart';
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
          mainAxisSpacing: 15.h,
          crossAxisSpacing: 15.w,
          childAspectRatio: 0.999,
          children: [
            CustomHikalSectionCard(
              title: 'General',
              imagePath: section.images[66],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImageTextBody(
                              images: section.images,
                            )));
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
          ]),
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
        padding: const EdgeInsets.all(6),
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
      ),
    );
  }
}
