import 'package:cv_project_team/core/services/shared_preferences/pref_key.dart';
import 'package:cv_project_team/core/services/shared_preferences/shared_pref.dart';

abstract class FontFamilyHelper {
  // const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';
  static const String rakkasEnglish = 'Rakkas';

  static String getLocalizedFamily() {
    final currentLang = SharedPref().getString(PrefKeys.language);
    if (currentLang == 'ar') {
      return cairoArabic;
    } else {
      return rakkasEnglish;
    }
  }
}
