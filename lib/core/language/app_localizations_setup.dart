// ignore_for_file: depend_on_referenced_packages

import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocalizationsSetup {
  static const Iterable<Locale> supportedLocales = [
    Locale('ar'),
    Locale('en'),
  ];

  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
  ];

  static Locale? localeResolutionCallback(
    Locale? locale,
    Iterable<Locale>? supportedLocales,
  ) {
    // Check if the desired locale is supported
    for (final supportedLocale in supportedLocales!) {
      if (supportedLocale.languageCode == locale!.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    // If the desired locale is not supported, return the first supported locale
    return supportedLocales.first;
  }
}
