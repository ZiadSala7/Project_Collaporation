import 'package:audioplayers/audioplayers.dart';
import 'package:cv_project_team/core/widgets/custom_player_icon.dart';
import 'package:flutter/material.dart';

class CustomPlayerPlay extends StatefulWidget {
  const CustomPlayerPlay({super.key});

  @override
  State<CustomPlayerPlay> createState() => _CustomPlayerPlayState();
}

class _CustomPlayerPlayState extends State<CustomPlayerPlay> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.black,
                  value: 5,
                  min: 0,
                  max: 10,
                  onChanged: (value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const CustomPlayerIcon(icon: Icons.forward_10),
                    ),
                    IconButton(
                      onPressed: () {
                        
                      },
                      icon: isPlaying
                          ? const CustomPlayerIcon(icon: Icons.pause)
                          : const CustomPlayerIcon(icon: Icons.play_arrow),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const CustomPlayerIcon(
                        icon: Icons.replay_10_outlined,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
