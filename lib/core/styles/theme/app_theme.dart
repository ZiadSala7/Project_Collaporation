// import 'package:cv_project_team/core/styles/fonts/font_family_helper.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 10,
        color: Colors.black,
        // fontFamily: FontFamilyHelper.getLocalizedFamily(),
        fontFamily: 'Rakkas',
      ),
    ),
  );
}
