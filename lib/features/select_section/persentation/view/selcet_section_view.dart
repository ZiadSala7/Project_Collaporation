import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/common/widgets/custom_linear_button.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/view/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSectionScreen extends StatefulWidget {
  const SelectSectionScreen({super.key});

  @override
  State<SelectSectionScreen> createState() => _SelectSectionScreenState();
}

class _SelectSectionScreenState extends State<SelectSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFadeInDown(
              duration: animationDuration,
              child: CustomLinearButton(
                height: 65.h,
                width: 150.w,
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!
                      .translate(LangKeys.guideVideo)
                      .toString(),
                  style: Styless.textStyle20,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomFadeInUp(
              duration: animationDuration,
              child: CustomLinearButton(
                height: 65.h,
                width: 150.w,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DetailsScreen()));
                },
                child: Text(
                  AppLocalizations.of(context)!
                      .translate(LangKeys.startTour)
                      .toString(),
                  style: Styless.textStyle20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
