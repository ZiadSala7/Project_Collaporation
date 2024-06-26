import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/about/presentation/widgets/turath_email_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomFadeInDown(
          duration: animationDuration,
          child: CircleAvatar(
            radius: 60.h,
            child: Image.asset(
              "assets/images/splashh.png",
              fit: BoxFit.fill,
              width: 75.w,
              height: 75.h,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomFadeInDown(
          duration: animationDuration,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              AppLocalizations.of(context)!
                  .translate(LangKeys.aboutTurathTeam)
                  .toString(),
              style: Styless.textStyle20,
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        const CustomFadeInDown(
          duration: animationDuration,
          child: TurathEmailLink(),
        ),
      ],
    );
  }
}
