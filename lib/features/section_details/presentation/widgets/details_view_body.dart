import 'package:cv_project_team/core/common/models/section_model.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/section_details/presentation/view/audio_screen.dart';
import 'package:cv_project_team/features/section_details/presentation/view/description_screen.dart';
import 'package:cv_project_team/features/section_details/presentation/view/hikal_view.dart';
import 'package:cv_project_team/features/section_details/presentation/view/images_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key, required this.section});
  final SectionCardModels section;
  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  final PageController _pageController = PageController();

  int pageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      // backgroundColor: mobileBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.5,
        currentIndex: pageIndex,
        useLegacyColorScheme: false,
        selectedLabelStyle: Styless.textStyle14.copyWith(color: Colors.red),
        unselectedLabelStyle: Styless.textStyle14,
        backgroundColor: AppColors.appGrey2,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              size: 30.sp,
              color: pageIndex == 0 ? Colors.red : Colors.black,
            ),
            label: local!.translate(LangKeys.decription).toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image_rounded,
              size: 30.sp,
              color: pageIndex == 1 ? Colors.red : Colors.black,
            ),
            label: local.translate(LangKeys.pictures).toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.audiotrack_rounded,
              size: 30.sp,
              color: pageIndex == 2 ? Colors.red : Colors.black,
            ),
            label: local.translate(LangKeys.audios).toString(),
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          DescriptionScreen(
            section: widget.section,
          ),
          widget.section.id == '5'
              ? HikalView(section: widget.section)
              : ImagesText(
                  images: widget.section.images,
                ),
          AudioScreen(
            section: widget.section,
          ),
        ],
      ),
    );
  }
}
