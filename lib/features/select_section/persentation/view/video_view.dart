import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/video_view_body.dart';
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          AppLocalizations.of(context)!.translate(LangKeys.videos).toString(),
          style: Styless.textStyle28
        ),
        ),
        body: const VideoViewBody(),
      ),
    );
  }
}
