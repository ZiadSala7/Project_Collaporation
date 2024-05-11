import 'package:cv_project_team/core/widgets/custom_player_play.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
           CustomPlayerPlay(audioPath: 'audios/test.mp3',),//without assets
           CustomPlayerPlay(audioPath: 'audios/test.mp3',),//without assets
        ],
      ),
    );
  }
}
