import 'package:audioplayers/audioplayers.dart';
import 'package:cv_project_team/core/widgets/custom_player_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayerPlay extends StatefulWidget {
  const CustomPlayerPlay({super.key, required this.audioPath});
  final String audioPath;
  @override
  State<CustomPlayerPlay> createState() => _CustomPlayerPlayState();
}

class _CustomPlayerPlayState extends State<CustomPlayerPlay> {
  AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  bool isLoading = false;
  Duration currentPosition = const Duration();
  Duration lengthDuration = const Duration();
  Future<void> playAudio() async {
    isLoading = true;
    setState(() {});
    await player.play(AssetSource(widget.audioPath));
    isLoading = false;
    setState(() {});
  }

  Future<void> pausePlayer() async {
    isLoading = true;
    setState(() {});
    await player.pause();
    isLoading = false;
    setState(() {});
  }

  setUpAudio() {
    player.onPositionChanged.listen((event) {
      currentPosition = event;
      setState(() {});
    });
    player.onDurationChanged.listen((event) {
      lengthDuration = event;
      setState(() {});
    });
  }

  Future<void> stopAudio() async {
    isLoading = true;
    setState(() {});
    await player.stop();
    isLoading = false;
    setState(() {});
  }

  seekTo(int sec) {
    player.seek(Duration(seconds: sec));
  }

  @override
  void initState() {
    super.initState();
    setUpAudio();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100.h,
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
              value: currentPosition.inSeconds.toDouble(),
              min: 0,
              max: lengthDuration.inSeconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  seekTo(value.toInt());
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    if (currentPosition.inSeconds > 10) {
                      seekTo(currentPosition.inSeconds - 10);
                    } else {
                      seekTo(0);
                    }
                    setState(() {});
                  },
                  icon: const CustomPlayerIcon(icon: Icons.forward_10),
                ),
                IconButton(
                  onPressed: () {
                    isPlaying = !isPlaying;
                    (isPlaying) ? playAudio() : pausePlayer();
                    setState(() {});
                  },
                  icon: isLoading
                      ? const CircularProgressIndicator()
                      : isPlaying
                          ? const CustomPlayerIcon(icon: Icons.pause)
                          : const CustomPlayerIcon(icon: Icons.play_arrow),
                ),
                IconButton(
                  onPressed: () {
                    if (currentPosition.inSeconds + 10 <
                        lengthDuration.inSeconds) {
                      seekTo(currentPosition.inSeconds + 10);
                    } else {
                      seekTo(lengthDuration.inSeconds);
                    }
                    setState(() {});
                  },
                  icon: const CustomPlayerIcon(
                    icon: Icons.replay_10_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
