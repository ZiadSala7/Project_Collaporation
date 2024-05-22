import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/common/widgets/custom_linear_button.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/page_indicators.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/select_section_view_body.dart';
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
            CustomLinearButton(
              height: 50.h,
              width: 100.h,
              onPressed: () {},
              child: Text(
                AppLocalizations.of(context)!
                    .translate(LangKeys.guideVideo)
                    .toString(),
              ),
            ),
            CustomLinearButton(onPressed: () {}, child: Text('Video')),
          ],
        ),
      ),
    );
  }
}

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final controller = PageController(viewportFraction: 0.8);
  final ValueNotifier<double> pageNotifier = ValueNotifier(0);
  final ValueNotifier<int> sectionSelectorNotifier = ValueNotifier(-1);

  @override
  void initState() {
    controller.addListener(pageListener);
    super.initState();
  }

  @override
  void dispose() {
    controller
      ..removeListener(pageListener)
      ..dispose();
    super.dispose();
  }

  void pageListener() {
    pageNotifier.value = controller.page ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24.h),
            CustomFadeInDown(
              duration: animationDuration,
              child: Text(
                  AppLocalizations.of(context)!
                      .translate(LangKeys.selectSection)
                      .toString(),
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.appBlack,
                  )),
            ),
            SizedBox(
              height: 32.h,
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  SelectSectionViewBody(
                    pageNotifier: pageNotifier,
                    sectionSelectorNotifier: sectionSelectorNotifier,
                    controller: controller,
                  ),
                  Positioned.fill(
                    top: null,
                    bottom: 40,
                    child: Column(
                      children: [
                        PageIndicators(
                          sectionSelectorNotifier: sectionSelectorNotifier,
                          pageNotifier: pageNotifier,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
