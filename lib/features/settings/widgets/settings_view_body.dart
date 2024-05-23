import 'package:cv_project_team/core/app/app_cubit/app_cubit.dart';
import 'package:cv_project_team/core/app/app_cubit/app_state.dart';
import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/common/widgets/custom_linear_button.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/fonts/font_family_helper.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsViewBdy extends StatelessWidget {
  const SettingsViewBdy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      final appCubit = context.read<AppCubit>();
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CustomFadeInDown(
              duration: animationDuration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .translate(LangKeys.changeLang)
                        .toString(),
                    style: Styless.textStyle28,
                  ),
                  CustomLinearButton(
                      onPressed: () {
                        appCubit.currentLanguageCode == 'en'
                            ? appCubit.toArabic()
                            : appCubit.toEnglish();
                      },
                      width: 100.w,
                      height: 40.h,
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate(LangKeys.language)
                            .toString(),
                        style: Styless.textStyle28.copyWith(
                          fontFamily: FontFamilyHelper.getLocalizedFamily() ==
                                  FontFamilyHelper.cairoArabic
                              ? FontFamilyHelper.rakkasEnglish
                              : FontFamilyHelper.cairoArabic,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
