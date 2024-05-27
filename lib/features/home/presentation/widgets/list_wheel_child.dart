import 'package:cv_project_team/core/common/widgets/custom_app_image.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/styles/snaping%20effect/snap_model.dart';
import 'package:cv_project_team/core/utils/styles.dart';
import 'package:cv_project_team/features/select_section/persentation/view/two_button_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListWheelChild extends StatelessWidget {
  const ListWheelChild({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!other(context)[index].isLock) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TwoButtonView(),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        child: Card(
          elevation: 1.75.sp,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAppImage(imgPath: other(context)[index].imagePath),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        other(context)[index].imageName,
                        style: Styless.textStyle24.copyWith(
                          decoration: other(context)[index].isLock
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    other(context)[index].icon
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<SnapImage> other(BuildContext context) {
    List<SnapImage> imgs = [
      SnapImage(
          imagePath: AppImages.imagesOutsideDerOut1,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.redDer)
              .toString(),
          icon: Icon(
            Icons.add_task_rounded,
            color: Colors.green,
            size: 25.sp,
          ),
          isLock: false),
      SnapImage(
          imagePath: AppImages.imagesOthersAzraa2DrankaDer,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.azraaDer)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
      SnapImage(
          imagePath: AppImages.imagesOthersMargergesDer,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.maryGerges)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
      SnapImage(
          imagePath: AppImages.imagesOthersAzraaDrankaDer,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.azraaDranka)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
      SnapImage(
          imagePath: AppImages.imagesOthersMhrqDer,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.mahraqDer)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
      SnapImage(
          imagePath: AppImages.imagesOthersShohadaa2Der,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.alShohadaa)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
      SnapImage(
          imagePath: AppImages.imagesOthersWhiteDer,
          imageName: AppLocalizations.of(context)!
              .translate(LangKeys.whiteDer)
              .toString(),
          icon: const Icon(Icons.lock),
          isLock: true),
    ];
    return imgs;
  }
}
