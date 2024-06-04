import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/features/about/presentation/widgets/flutter_developers_email_link.dart';
import 'package:flutter/material.dart';

class ContactPageBody extends StatelessWidget {
  const ContactPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomFadeInDown(
            duration: animationDuration,
            child: FlutterDevelopersEmailLink(),
          ),
        ],
      ),
    );
  }
}
