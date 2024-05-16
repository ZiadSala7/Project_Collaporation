import 'package:cv_project_team/core/app/audio_cubit/audio_cubit.dart';
import 'package:cv_project_team/core/app/audio_cubit/audio_state.dart';
import 'package:cv_project_team/core/widgets/custom_player_play_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayerPlay extends StatelessWidget {
  const CustomPlayerPlay({super.key, required this.audioPath});
  final String audioPath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AudioCubit, AudioState>(builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<AudioCubit>(context)
                .setCurrentAudio(path: audioPath);
            BlocProvider.of<AudioCubit>(context).playAudio(audioPath);
            showModalBottomSheet(
              context: context,
              useSafeArea: true,
              isScrollControlled: true, // Set to true
              builder: (context) {
                return CustomPlayerPlayBody(
                  audioPath: audioPath,
                );
              },
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            // color:AppColors.secondryColor,
            child: ListTile(
              title: const Text("Audio"),
              leading: CircleAvatar(
                  radius: 20.sp,
                  //TODO:custonPlayIcon
                  child: Icon(Icons.play_arrow_rounded)),
            ),
          ),
        );
      }),
    );
  }
}
