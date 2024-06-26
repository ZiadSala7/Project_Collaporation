import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'images_text.dart';

class GeneralHikalView extends StatelessWidget {
  const GeneralHikalView(
      {super.key, required this.images, required this.title});
  final List<String> images;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          title,
          style: Styless.textStyle20,
        ),
        centerTitle: true,
        backgroundColor: AppColors.appGrey1,
      ),
      body: ImagesText(
        images: images,
      ),
    );
  }
}
