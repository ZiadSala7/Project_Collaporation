import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/section_details/presentation/view/general_hikal_view.dart';
import 'package:cv_project_team/features/section_details/presentation/view/hikal_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HikelLevelView extends StatelessWidget {
  const HikelLevelView(
      {super.key,
      required this.image,
      required this.title,
      required this.startidexlev2,
      required this.startquba,
      required this.startgen});
  final List<String> image;
  final String title;
  final int startidexlev2;
  final int startquba;
  final int startgen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appGrey1,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            title,
            style: Styless.textStyle14,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: ListView(children: [
            CustomHikalSectionCard(
              title: 'General',
              imagePath: image[startgen],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralHikalView(
                      images: image.sublist(startgen),
                      title: 'General $title',
                    ),
                  ),
                );
              },
            ),
            CustomHikalSectionCard(
              title: 'Qoba',
              imagePath: image[startquba],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralHikalView(
                      images: image.sublist(startquba, startgen),
                      title: 'Qoba',
                    ),
                  ),
                );
              },
            ),
            CustomHikalSectionCard(
              title: 'level one',
              imagePath: image[0],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralHikalView(
                      images: image.sublist(0, startidexlev2),
                      title: 'level one',
                    ),
                  ),
                );
              },
            ),
            CustomHikalSectionCard(
              title: 'level two',
              imagePath: image[startidexlev2],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralHikalView(
                      images: image.sublist(startidexlev2, startquba),
                      title: 'level two',
                    ),
                  ),
                );
              },
            ),
          ]),
        ));
  }
}
