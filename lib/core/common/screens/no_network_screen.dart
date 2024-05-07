import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:flutter/material.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          //to set image cover all screen
          constraints: const BoxConstraints.expand(),
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.imagesNoNetwork,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
