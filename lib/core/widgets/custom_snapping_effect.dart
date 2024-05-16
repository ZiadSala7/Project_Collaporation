import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/styles/snaping%20effect/snap_model.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

List<SnapImage> lst(BuildContext context) {
  List<SnapImage> imgs = [
    // SnapImage(
    //     imagePath: AppImages.imagesOthersAzraa2DrankaDer,
    //     imageName: AppLocalizations.of(context)!
    //         .translate(LangKeys.azraaDer)
    //         .toString(),
    //     icon: const Icon(Icons.lock)),
    SnapImage(
        imagePath: AppImages.imagesOthersMargergesDer,
        imageName: AppLocalizations.of(context)!
            .translate(LangKeys.maryGerges)
            .toString(),
        icon: const Icon(Icons.lock)),
    SnapImage(
        imagePath: AppImages.imagesOthersAzraaDrankaDer,
        imageName: AppLocalizations.of(context)!
            .translate(LangKeys.azraaDranka)
            .toString(),
        icon: const Icon(Icons.lock)),
    // SnapImage(
    //     imagePath: AppImages.imagesOthersMhrqDer,
    //     imageName: AppLocalizations.of(context)!
    //         .translate(LangKeys.mahraqDer)
    //         .toString(),
    //     icon: const Icon(Icons.lock)),
    // SnapImage(
    //     imagePath: AppImages.imagesOthersShohadaa2Der,
    //     imageName: AppLocalizations.of(context)!
    //         .translate(LangKeys.alShohadaa)
    //         .toString(),
    //     icon: const Icon(Icons.lock)),
    SnapImage(
        imagePath: AppImages.imagesOthersWhiteDer,
        imageName: AppLocalizations.of(context)!
            .translate(LangKeys.whiteDer)
            .toString(),
        icon: const Icon(Icons.lock)),
  ];
  return imgs;
}

class CustomSnappingEffect extends StatelessWidget {
  const CustomSnappingEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ScrollSnapList(
        initialIndex: 2,
        scrollDirection: Axis.vertical,
        itemBuilder: _builItem,
        itemCount: lst(context).length,
        itemSize: 300,
        onItemFocus: (index) {},
        dynamicItemSize: true,
      ),
    );
  }
}

Widget _builItem(BuildContext context, int index) {
  List<SnapImage> imgs = lst(context);
  SnapImage snapImage = imgs[index];
  return SizedBox(
    child: Card(
      elevation: 12,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              snapImage.imagePath,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    snapImage.imageName,
                    style: const TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Color.fromARGB(126, 0, 0, 0),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
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
