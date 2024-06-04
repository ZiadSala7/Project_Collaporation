import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/common/widgets/custom_player_play.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
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
          itemCount: widget.section.audioPath.length,
          itemBuilder: (context, index) {
            return CustomPlayerPlay(
              audioPath: widget.section.audioPath[index],
              startAnimation: startAnimation,
              index: index,
              title: 
               AppLocalizations.of(context)!
                  .translate(widget.section.name)
                  .toString(),
            );
          },
        ),
      ),
    );
  }
}
