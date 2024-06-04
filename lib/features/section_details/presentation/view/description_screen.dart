import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key, required this.section});
  final SectionCardModels section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(section.description),
      ),
    );
  }
}
