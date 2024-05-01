import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: CustomFadeInDown(
            duration: 400,
            child: Container(
              alignment: Alignment.center,
              // height: 50,
              // width: 50,
              // color: Colors.black,
              child: Column(
                children: [
                  Text(AppLocalizations.of(context)!
                      .translate(LangKeys.appName)
                      .toString()),
                    Image.asset("assets/images/logo.jpg",fit: BoxFit.fill,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
