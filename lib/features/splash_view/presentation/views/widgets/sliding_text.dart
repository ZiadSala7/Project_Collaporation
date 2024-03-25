import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (BuildContext context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'مرحبا بك ....',
              textAlign: TextAlign.center,
              style: Styless.textStyle28,
            ),
          );
        });
  }
}
