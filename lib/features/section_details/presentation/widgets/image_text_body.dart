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
        child: ListView.builder(
            itemCount: section.images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  section.images[index],
                ),
              );
            }));
  }
}
