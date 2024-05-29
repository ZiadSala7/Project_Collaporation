import 'package:cv_project_team/core/common/widgets/custom_drawer.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/red_monastry_view_body.dart';
import 'package:flutter/material.dart';

class RedMonistaryView extends StatelessWidget {
  const RedMonistaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        backgroundColor: AppColors.appGrey1,
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          elevation: 0,
          title: Text(
            AppLocalizations.of(context)!.translate(LangKeys.redDer).toString(),
            style: Styless.textStyle28,
          ),
        ),
        body: const RedMonastryViewBody(),
      ),
    );
  }
}
