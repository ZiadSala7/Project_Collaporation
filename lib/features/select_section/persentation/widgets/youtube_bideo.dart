import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class YoutubeVideo extends StatelessWidget {
  const YoutubeVideo(
      {super.key, required this.videoImage, required this.videoLink});
  final String videoImage;
  final String videoLink;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async{
        final Uri url = Uri.parse(videoLink);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        height: 200.h,
        width: 200.w,
        decoration: BoxDecoration(
          // color: Colors.amber,
          image: DecorationImage(
            image: AssetImage(videoImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
