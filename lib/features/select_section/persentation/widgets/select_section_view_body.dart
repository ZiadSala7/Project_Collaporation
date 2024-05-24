import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/features/home/presentation/views/details_view.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/section_card.dart';
import 'package:flutter/material.dart';

class SelectSectionViewBody extends StatelessWidget {
  const SelectSectionViewBody({
    super.key,
    required this.pageNotifier,
    required this.sectionSelectorNotifier,
    required this.controller,
    required this.section,
  });

  final ValueNotifier<double> pageNotifier;
  final ValueNotifier<int> sectionSelectorNotifier;
  final PageController controller;
  final SectionCardModels section;

  double _getOffsetX(double percent) => percent.isNegative ? 40.0 : -40.0;

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
              transform: _getOutTranslate(
                  Directionality.of(context) == TextDirection.rtl
                      ? -percent
                      : percent,
                  selected,
                  index),
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
                            child: DetailsView(
                              section: section,
                            ),
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
