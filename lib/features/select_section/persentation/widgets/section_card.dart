import 'dart:ui';

import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/features/home/presentation/views/details_view.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/animated_shimmer_arrow.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/background_section_card.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/parallax_image_card.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/vertical_section_title.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    required this.percent,
    required this.section,
    required this.expand,
    required this.onSwipeUp,
    required this.onSwipeDown,
    required this.onTap,
    super.key,
  });

  final double percent;
  final SectionCardModels section;
  final VoidCallback onSwipeUp;
  final VoidCallback onSwipeDown;
  final VoidCallback onTap;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 200),
      curve: Curves.fastOutSlowIn,
      tween: Tween(begin: 0, end: expand ? 1 : 0),
      builder: (_, value, __) => Stack(
        fit: StackFit.expand,
        children: [
          // -----------------------------------------------
          // Background information card
          // -----------------------------------------------
          Transform.scale(
            scale: lerpDouble(.85, 1.2, value),
            // scale: 0.85,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 180),
              child: BackgroundSectionCard(
                translation: value,
                section: section,
              ),
            ),
          ),
          // -----------------------------------------------
          // Room image card with parallax effect
          // -----------------------------------------------
          Padding(
            padding: const EdgeInsets.only(bottom: 160),
            child: Transform(
              transform: Matrix4.translationValues(0, -90 * value, 0),
              child: GestureDetector(
                onTap: onTap,
                onVerticalDragUpdate: (details) {
                  if (details.primaryDelta! < -10) onSwipeUp();
                  if (details.primaryDelta! > 10) onSwipeDown();
                },
                child: Hero(
                  tag: section.id,
                  // -----------------------------------------------
                  // Custom hero widget
                  // -----------------------------------------------
                  flightShuttleBuilder: (_, animation, __, ___, ____) {
                    return AnimatedBuilder(
                      animation: animation,
                      builder: (context, _) => const Material(
                        type: MaterialType.transparency,
                        child: DetailsView(),
                      ),
                    );
                  },
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.none,
                    children: [
                      ParallaxImageCard(
                        imageUrl: section.imageUrl,
                        parallaxValue: percent,
                      ),
                      VerticalSectionTitle(
                        title: section.name,
                      ),
                      const AnimatedUpwardArrows()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
