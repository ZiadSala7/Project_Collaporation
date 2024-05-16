import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/styles/snaping%20effect/snap_model.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

List<SnapImage> imgs = [
  SnapImage(
      imagePath: AppImages.imagesOthersAzraa2DrankaDer,
      imageName: LangKeys.others1,
      icon: const Icon(Icons.lock)),
  SnapImage(
      imagePath: AppImages.imagesOthersAzraaDrankaDer,
      imageName: LangKeys.others3,
      icon: const Icon(Icons.lock)),
  SnapImage(
      imagePath: AppImages.imagesOthersMargergesDer,
      imageName: LangKeys.others4,
      icon: const Icon(Icons.lock)),
  SnapImage(
      imagePath: AppImages.imagesOthersMhrqDer,
      imageName: LangKeys.others5,
      icon: const Icon(Icons.lock)),
  SnapImage(
      imagePath: AppImages.imagesOthersShohadaa2Der,
      imageName: LangKeys.others6,
      icon: const Icon(Icons.lock)),
  SnapImage(
      imagePath: AppImages.imagesOthersWhiteDer,
      imageName: LangKeys.others2,
      icon: const Icon(Icons.lock)),
];

class CustomSnappingEffect extends StatelessWidget {
  const CustomSnappingEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ScrollSnapList(
          scrollDirection: Axis.vertical,
          itemBuilder: _builItem,
          itemCount: imgs.length,
          itemSize: 150,
          onItemFocus: (index) {}),
    );
  }
}

Widget _builItem(BuildContext context, int index) {
  SnapImage snapImage = imgs[index];
  return SizedBox(
    child: Card(
      elevation: 12,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              snapImage.imagePath,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(snapImage.imageName),
                const SizedBox(
                  height: 12,
                ),
                snapImage.icon,
              ],
            )
          ],
        ),
      ),
    ),
  );
}
