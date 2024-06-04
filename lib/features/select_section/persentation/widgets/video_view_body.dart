import 'package:cv_project_team/features/select_section/persentation/widgets/youtube_bideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoViewBody extends StatelessWidget {
  const VideoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children:  [
          const YoutubeVideo(
            videoImage: 'assets/images/video1Image.jpg',
            videoLink: 'https://youtu.be/yX8x4jYzenI?si=YHiCbW5xuocPJK0k',
          ),
          SizedBox(height: 8.h),
          const YoutubeVideo(
            videoImage: 'assets/images/video2Image.jpg',
            videoLink: 'https://youtu.be/kQvh-385Fu4?si=961hGZYk3_FbfPUP',
          ),
          SizedBox(height: 8.h),
          const YoutubeVideo(
            videoImage: 'assets/images/video3Image.jpg',
            videoLink: 'https://youtu.be/yX8x4jYzenI?si=YHiCbW5xuocPJK0k',
          ),
        ],
      ),
    );
  }
}

