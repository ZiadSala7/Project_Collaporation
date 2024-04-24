import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ph4.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 138, 136, 136), BlendMode.darken),
          ),
        ),
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.translate(LangKeys.appName).toString()),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: const EdgeInsets.all(14),
              ),
              child: const Text(
                'استكشف الان',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
