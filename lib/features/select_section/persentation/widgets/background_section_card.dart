import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundSectionCard extends StatelessWidget {
  const BackgroundSectionCard({
    required this.translation,
    super.key,
    required this.section,
  });

  final SectionCardModels section;
  final double translation;

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.translationValues(0, 80 * translation, 0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.all(Radius.circular(12.sp)),
            boxShadow: [
              BoxShadow(
                color: Colors.brown,
                blurRadius: 12,
                offset: Offset(-7, 7),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Text(
                AppLocalizations.of(context)!
                    .translate(section.description)
                    .toString(),
              ),
            ),
          ),
        ));
  }
}
