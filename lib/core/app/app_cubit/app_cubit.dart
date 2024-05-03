import 'package:cv_project_team/core/app/app_cubit/app_state.dart';
import 'package:cv_project_team/core/services/shared_preferences/pref_key.dart';
import 'package:cv_project_team/core/services/shared_preferences/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  String currentLanguageCode = 'ar';
//language change
  // get saved language
  void getSavedLanguage({Locale? locale}) {
    final result = SharedPref().containPreference(PrefKeys.language)
        ? SharedPref().getString(PrefKeys.language)
        : 'ar';
    currentLanguageCode = result!;
    emit(AppChangedLanguage(local: Locale(locale.toString())));
  }

  Future<void> _changeLanguage(String langCode) async {
    await SharedPref().setString(PrefKeys.language, langCode);
    currentLanguageCode = langCode;
    emit(AppChangedLanguage(local: Locale(langCode)));
  }

  void toArabic() {
    _changeLanguage('ar');
  }

  void toEnglish() {
    _changeLanguage('en');
  }
}
