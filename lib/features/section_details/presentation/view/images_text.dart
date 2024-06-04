import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/features/section_details/presentation/view/hikal_view.dart';
import 'package:cv_project_team/features/section_details/presentation/widgets/image_text_body.dart';
import 'package:flutter/material.dart';

class ImagesText extends StatelessWidget {
  const ImagesText({super.key,  required this.images});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ImageTextBody(
                images: images,
              ));
  }
}
