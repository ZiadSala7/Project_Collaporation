import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/features/home/presentation/views/deatails.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/section_card.dart';
import 'package:flutter/material.dart';

class SelectSectionViewBody extends StatelessWidget {
  const SelectSectionViewBody({
    super.key,
    required this.pageNotifier,
    required this.sectionSelectorNotifier,
    required this.controller,
  });

  final ValueNotifier<double> pageNotifier;
  final ValueNotifier<int> sectionSelectorNotifier;
  final PageController controller;

  double _getOffsetX(double percent) => percent.isNegative ? 30.0 : -30.0;

  Matrix4 _getOutTranslate(double percent, int selected, int index) {
    final x = selected != index && selected != -1 ? _getOffsetX(percent) : 0.0;
    return Matrix4.translationValues(x, 0, 0);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: pageNotifier,
      builder: (_, page, __) => ValueListenableBuilder(
        valueListenable: sectionSelectorNotifier,
        builder: (_, selected, __) => PageView.builder(
          clipBehavior: Clip.none,
          itemCount: SectionCardModels.fakeValues.length,
          controller: controller,
          itemBuilder: (_, index) {
            final percent = page - index;
            final isSelected = selected == index;
            final section = SectionCardModels.fakeValues[index];
            return AnimatedContainer(
              duration: kThemeAnimationDuration,
              curve: Curves.fastOutSlowIn,
              transform: _getOutTranslate(percent, selected, index),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SectionCard(
                  percent: percent,
                  expand: isSelected,
                  section: section,
                  onSwipeUp: () => sectionSelectorNotifier.value = index,
                  onSwipeDown: () => sectionSelectorNotifier.value = -1,
                  onTap: () async {
                    if (isSelected) {
                      await Navigator.push(
                        context,
                        PageRouteBuilder<void>(
                          transitionDuration: const Duration(milliseconds: 800),
                          reverseTransitionDuration:
                              const Duration(milliseconds: 800),
                          pageBuilder: (_, animation, __) => FadeTransition(
                            opacity: animation,
                            child: const Deatails(),
                          ),
                        ),
                      );
                      sectionSelectorNotifier.value = -1;
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
