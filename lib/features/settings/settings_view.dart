import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/settings/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate(LangKeys.settings).toString()),
        titleTextStyle: Styless.textStyle28,
      ),
      body: const SettingsViewBdy(),
    );
  }
}