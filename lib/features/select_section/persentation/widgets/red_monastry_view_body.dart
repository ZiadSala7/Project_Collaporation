import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/two_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RedMonastryViewBody extends StatelessWidget {
  const RedMonastryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: ListView(
        children: [
          CustomFadeInDown(
            duration: animationDuration,
            child: Text(
              AppLocalizations.of(context)!
                  .translate(LangKeys.redMonasteryDescribtion)
                  .toString(),
              style: Styless.textStyle22,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 50.h),
          const TwoButton(),
        ],
      ),
    );
  }
}
