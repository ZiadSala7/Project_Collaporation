import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/features/home/presentation/widgets/custom_app_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

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
      bottomNavigationBar: CupertinoTabBar(
        height: 55.h,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image_rounded,
              size: 30.sp,
              color: pageIndex == 0 ? Colors.amber : Colors.white,
            ),
            label: local!.translate(LangKeys.textAndImages).toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.audiotrack_rounded,
              size: 30.sp,
              color: pageIndex == 1 ? Colors.amber : Colors.white,
            ),
            label: local.translate(LangKeys.audios).toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_rounded,
              size: 27.sp,
              color: pageIndex == 2 ? Colors.amber : Colors.white,
            ),
            label: local.translate(LangKeys.videos).toString(),
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {},
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Center(
                child: ListView(
                  children: [
                    Text(local.translate(LangKeys.textAndImages).toString()),
                    SizedBox(height: 20.h),
                    const CustomAppImage(
                        imgPath: AppImages.imagesOutsideDerOut1),
                    SizedBox(height: 20.h),
                    const CustomAppImage(
                        imgPath: AppImages.imagesAlhesnH22),
                    SizedBox(height: 20.h),
                    const CustomAppImage(
                        imgPath: AppImages.imagesAlHekalEastHenyaLevel1Elevel11),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
          Scaffold(
              body: Center(
            child: Text(local.translate(LangKeys.audios).toString()),
          )),
          Scaffold(
              body: Center(
            child: Text(local.translate(LangKeys.videos).toString()),
          )),
        ],
      ),
    );
  }
}
