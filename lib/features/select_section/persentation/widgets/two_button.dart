import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/common/widgets/custom_linear_button.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/view/select_section_view.dart';
import 'package:cv_project_team/features/select_section/persentation/view/video_view.dart';
import 'package:flutter/material.dart';


class TwoButton extends StatelessWidget {
  const TwoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomFadeInUp(
          duration: animationDuration,
          child: CustomLinearButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SelectSectionView()));
            },
            child: Text(
              AppLocalizations.of(context)!
                  .translate(LangKeys.startTour)
                  .toString(),
              style: Styless.textStyle20,
            ),
          ),
        ),
        CustomFadeInUp(
          duration: animationDuration,
          child: CustomLinearButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const VideoView()));
            },
            child: Text(
              AppLocalizations.of(context)!
                  .translate(LangKeys.guideVideo)
                  .toString(),
              style: Styless.textStyle20,
            ),
          ),
        ),
      ],
    );
  }
}
