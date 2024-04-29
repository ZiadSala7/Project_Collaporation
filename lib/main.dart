import 'package:cv_project_team/core/language/app_localizations_setup.dart';
import 'package:cv_project_team/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      //localizations section
      locale: Locale('en'), // to english Locale('en'),
      supportedLocales: AppLocalizationsSetup.supportedLocales,
      localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
      localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
    );
  }
}
