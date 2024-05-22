import 'package:cv_project_team/features/about/presentation/widgets/turath_email_link.dart';
import 'package:flutter/material.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TurathEmailLink(),
      ],
    );
  }
}
