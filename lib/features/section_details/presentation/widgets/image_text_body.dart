import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/common/widgets/custom_app_image.dart';
import 'package:cv_project_team/features/imageview/presentation/views/image_view_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTextBody extends StatelessWidget {
  const ImageTextBody({super.key, required this.section});
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 5 / 7,
          children: List.generate(section.images.length, (index) {
            return ShowImage(
              index: index,
              section: section,
            );
          })),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({
    super.key,
    required this.section,
    required this.index,
  });
  final int index;
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ImageViewDetails(
            index: index,
            images: section.images,
          );
        }));
      },
      child: CustomAppImage(imgPath: section.images[index]),
    );
  }
}
