import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizentalSectionTitle extends StatelessWidget {
  const HorizentalSectionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 40.h, right: 20.h, top: 12.w),
          child: Text(
            style: Styless.textStyle33.copyWith(color: AppColors.appWhite),
            AppLocalizations.of(context)!.translate(title).toString(),
            maxLines: 1,
            // style: context.displayLarge.copyWith(color: SHColors.textColor),
          ),
        ),
      ),
    );
  }
}
