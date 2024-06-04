import 'package:cv_project_team/core/app/audio_cubit/audio_cubit.dart';
import 'package:cv_project_team/core/app/audio_cubit/audio_state.dart';
import 'package:cv_project_team/core/common/widgets/custom_player_play_body.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlayerPlay extends StatelessWidget {
  const CustomPlayerPlay(
      {super.key,
      required this.audioPath,
      required this.startAnimation,
      required this.index,
      required this.title});
  final String audioPath;
  final bool startAnimation;
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
            ).then((v) {
              BlocProvider.of<AudioCubit>(context).pausePlayer();
            });
          },
          child: AnimatedContainer(
            transform: Matrix4.translationValues(
                startAnimation ? 0 : screenWidth, 0, 0),
            height: 50.h,
            alignment: Alignment.centerRight,
            color: AppColors.appGrey3,
            margin: const EdgeInsets.all(8),
            // color:AppColors.secondryColor,
            duration: Duration(milliseconds: 300 + (index * 200)),
            child: ListTile(
              title: Text('$title ${index + 1}'),
              leading: CircleAvatar(
                  radius: 20.sp, child: const Icon(Icons.play_arrow_rounded)),
            ),
          ),
        );
      }),
    );
  }
}
