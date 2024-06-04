import 'package:cv_project_team/features/about/presentation/widgets/turath_email_link.dart';
import 'package:flutter/material.dart';

class ContactPageBody extends StatelessWidget {
  const ContactPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          TurathEmailLink(),
        ],
      ),
    );
  }
}
