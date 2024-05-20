import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/core/widgets/custom_drawer.dart';
import 'package:cv_project_team/features/home/presentation/widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("section name",style: Styless.textStyle24,),
        centerTitle: true,
      ),
      body: const DetailsViewBody(),
    );
  }
}

