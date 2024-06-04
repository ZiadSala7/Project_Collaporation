import 'package:cv_project_team/core/common/widgets/custom_app_image.dart';
import 'package:cv_project_team/features/section_details/presentation/view/image_view_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTextBody extends StatelessWidget {
  const ImageTextBody({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 5 / 7,
          children: List.generate(images.length, (index) {
            return ShowImage(
              index: index,
              images: images,
            );
          })),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({
    super.key,
    required this.index,
    required this.images,
  });
  final int index;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ImageViewDetails(
            index: index,
            images: images,
          );
        }));
      },
      child: CustomAppImage(imgPath: images[index]),
    );
  }
}
