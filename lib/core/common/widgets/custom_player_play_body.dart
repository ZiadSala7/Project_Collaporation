import 'package:cv_project_team/core/app/audio_cubit/audio_cubit.dart';
import 'package:cv_project_team/core/app/audio_cubit/audio_state.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/common/widgets/custom_player_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPlayerPlayBody extends StatelessWidget {
  const CustomPlayerPlayBody({super.key, required this.audioPath});
  final String audioPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.mainColor,
            AppColors.secondryColor,
            Colors.white,
          ],
          begin: Alignment(0.46, -0.89),
          end: Alignment(-0.46, 0.89),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.imagesSmile,
            fit: BoxFit.cover,
          ),
          CustomPlayerPlayBodySection(
            audioPath: audioPath,
          )
        ],
      ),
    );
  }
}

class CustomPlayerPlayBodySection extends StatelessWidget {
  const CustomPlayerPlayBodySection({super.key, required this.audioPath});
  final String audioPath;

  @override
  Widget build(BuildContext context) {
    final audiocubit = BlocProvider.of<AudioCubit>(context);
    // audiocubit.setCurrentAudio(path: audioPath);
    return BlocBuilder<AudioCubit, AudioState>(builder: (context, state) {
      return Column(
        children: [
          // Text(audiocubit.currentAudio),
          Slider(
            value: audiocubit.currentPosition.inSeconds.toDouble(),
            min: 0,
            max: audiocubit.lengthDuration.inSeconds.toDouble(),
            activeColor: AppColors.mainColor,
            inactiveColor: AppColors.secondryColor,
            onChanged: (value) {
              audiocubit.seekTo(value.toInt());
            },
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomPlayerIcon(
                onPressed: () {
                  int position = audiocubit.currentPosition.inSeconds.toInt();
                  if(position >= 10){
                    audiocubit.seekTo(position - 10);
                  }else{
                    audiocubit.seekTo(0);
                  }
                },
                icon: Icons.forward_10_rounded,
              ),
              CustomPlayerIcon(
                onPressed: () {
                  audiocubit.playOrPause();
                },
                icon:audiocubit.isPlaying?Icons.pause :Icons.play_arrow,
              ),
              CustomPlayerIcon(
                onPressed: () {
                  int position = audiocubit.currentPosition.inSeconds.toInt();
                  if(position <= audiocubit.lengthDuration.inSeconds.toInt()-10){
                    audiocubit.seekTo(position + 10);
                  }else{
                    audiocubit.seekTo(audiocubit.lengthDuration.inSeconds.toInt());
                  }
                },
                icon: Icons.replay_10_rounded,
              ),
            ],
          )
        ],
      );
    });
  }
}
