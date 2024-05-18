import 'package:cv_project_team/core/app/app_cubit/app_cubit.dart';
import 'package:cv_project_team/core/app/app_cubit/app_state.dart';
import 'package:cv_project_team/core/app/audio_cubit/audio_cubit.dart';
import 'package:cv_project_team/core/app/bloc_observer.dart';
import 'package:cv_project_team/core/language/app_localizations_setup.dart';
import 'package:cv_project_team/core/services/shared_preferences/shared_pref.dart';
import 'package:cv_project_team/core/styles/theme/app_theme.dart';
import 'package:cv_project_team/features/home/presentation/views/home_view.dart';
import 'package:cv_project_team/features/select_section/persentation/view/selcet_section_view.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/select_section_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppCubit()..getSavedLanguage(),
          ),
          BlocProvider(
            create: (context) => AudioCubit(),
          ),
        ],
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
            home: const SeclectSectionScreen(),
          );
        }),
      ),
    );
  }
}
