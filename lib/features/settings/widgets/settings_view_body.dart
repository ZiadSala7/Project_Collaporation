import 'package:cv_project_team/core/common/widgets/custom_linear_button.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsViewBdy extends StatelessWidget {
  const SettingsViewBdy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!
                    .translate(LangKeys.changeLang)
                    .toString(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 27.sp
                ),
              ),
              CustomLinearButton(
                  onPressed: () {},
                  width: 100.w,
                  child: Text(
                    AppLocalizations.of(context)!
                        .translate(LangKeys.language)
                        .toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.yellow),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
