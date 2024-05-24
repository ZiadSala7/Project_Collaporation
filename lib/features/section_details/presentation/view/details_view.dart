import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/core/common/widgets/custom_drawer.dart';
import 'package:cv_project_team/features/section_details/presentation/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.section});
  final SectionCardModels section;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: section.id,
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.translate(section.name).toString(),
            style: Styless.textStyle28,
          ),
          centerTitle: true,
        ),
        body: DetailsViewBody(
          section: section,
        ),
      ),
    );
  }
}
