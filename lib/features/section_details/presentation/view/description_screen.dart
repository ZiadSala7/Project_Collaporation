import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.section});
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomFadeInDown(
        duration: animationDuration,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .translate(section.descriptionScreenTitle)
                        .toString(),
                    style: Styless.textStyle20,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
