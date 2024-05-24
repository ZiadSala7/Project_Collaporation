import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/common/widgets/custom_app_image.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTextBody extends StatelessWidget {
  const ImageTextBody({super.key, required this.section});
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Center(
        child: ListView(
          children: [
            Text(local!.translate(LangKeys.textAndImages).toString()),
            SizedBox(height: 20.h),
            const CustomAppImage(imgPath: AppImages.imagesOutsideDerOut1),
            SizedBox(height: 20.h),
            const CustomAppImage(imgPath: AppImages.imagesAlhesnH22),
            SizedBox(height: 20.h),
            const CustomAppImage(
                imgPath: AppImages.imagesAlHekalEastHenyaLevel1Elevel11),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
