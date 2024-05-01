import 'package:cv_project_team/core/language/app_localizations_setup.dart';
import 'package:cv_project_team/core/styles/theme/app_theme.dart';
import 'package:cv_project_team/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
void main() {
runApp(
   DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp()  , 
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        home: const HomeView(),
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        //localizations section
        locale: const Locale('ar'), // to english Locale('en'),
        supportedLocales: AppLocalizationsSetup.supportedLocales,
        localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
        localeResolutionCallback:
            AppLocalizationsSetup.localeResolutionCallback,
      ),
    );
  }
}
