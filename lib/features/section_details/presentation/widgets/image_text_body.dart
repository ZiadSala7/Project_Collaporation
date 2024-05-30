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
          vertical: 15.h,
        ),
        child: ListView.builder(
            itemCount: section.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ImageViewDetails();
                    }));
                  },
                  child: CustomAppImage(imgPath: section.images[index]),
                ),
              );
            }));
  }
}
