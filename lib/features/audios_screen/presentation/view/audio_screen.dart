import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/styles/audio/app_audio.dart';
import 'package:cv_project_team/core/widgets/custom_player_play.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key, required this.section});
  final SectionCardModels section;
  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  bool startAnimation = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return CustomPlayerPlay(
              audioPath: section.audioPath,
              startAnimation: startAnimation,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
