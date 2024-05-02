abstract class FontFamilyHelper {
  // const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFamily() {
    // final currentLang = SharedPref().getString(PrefKeys.language);
    String currentLang = 'ar';
    if (currentLang == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
