import 'package:cv_project_team/core/styles/audio/app_audio.dart';
import 'package:cv_project_team/core/widgets/custom_player_play.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

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
          itemCount: 20,
          itemBuilder: (context, index) {
            return CustomPlayerPlay(
              audioPath: Assets.audiosAmod2Khoras,
              startAnimation: startAnimation,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
