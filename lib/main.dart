import 'package:cv_project_team/core/app/app_cubit/app_cubit.dart';
import 'package:cv_project_team/core/app/app_cubit/app_state.dart';
import 'package:cv_project_team/core/app/bloc_observer.dart';
import 'package:cv_project_team/core/language/app_localizations_setup.dart';
import 'package:cv_project_team/core/services/shared_preferences/shared_pref.dart';
import 'package:cv_project_team/core/styles/theme/app_theme.dart';
import 'package:cv_project_team/core/widgets/custom_player_play.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //set observer know currebt state
  Bloc.observer = AppBlocObserver();
  //initialized sharedPreference
  await SharedPref().instantiatePreferences();
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ));
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: BlocProvider<AppCubit>(
        create: (context) => AppCubit()..getSavedLanguage(),
        child: BlocBuilder<AppCubit, AppState>(builder: (context, state) {
          final cubit = BlocProvider.of<AppCubit>(context);
          return MaterialApp(
            theme: appTheme(),
            debugShowCheckedModeBanner: false,
            //localizations section
            locale:
                Locale(cubit.currentLanguageCode), // to english Locale('en'),
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localizationsDelegates:
                AppLocalizationsSetup.localizationsDelegates,
            localeResolutionCallback:
                AppLocalizationsSetup.localeResolutionCallback,
            home: const CustomPlayerPlay(),
          );
        }),
      ),
    );
  }
}
