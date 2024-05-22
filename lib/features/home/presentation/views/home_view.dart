import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/core/widgets/custom_drawer.dart';
import 'package:cv_project_team/core/widgets/custom_snapping_effect.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: CustomFadeInRight(
            duration: animationDuration,
            child: Text(
              AppLocalizations.of(context)!
                  .translate(LangKeys.appName)
                  .toString(),
              style: Styless.textStyle33,
            ),
          ),
          titleSpacing: 2,
          centerTitle: true,
        ),
        body: const CustomSnappingEffect(),
      ),
    );
  }
}
