// import 'package:cv_project_team/core/language/app_localizations.dart';
// import 'package:cv_project_team/core/language/lang_keys.dart';
// import 'package:cv_project_team/core/styles/colors/app_color.dart';
// import 'package:cv_project_team/core/styles/image/app_images.dart';
// import 'package:cv_project_team/core/styles/snaping%20effect/snap_model.dart';
// import 'package:cv_project_team/core/utils/styles.dart';
// import 'package:cv_project_team/core/common/widgets/custom_app_image.dart';
// import 'package:cv_project_team/features/select_section/persentation/view/details_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';



// class CustomSnappingEffect extends StatelessWidget {
//   const CustomSnappingEffect({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: double.infinity,
//       child: ScrollSnapList(
//         initialIndex: 0,
//         scrollDirection: Axis.vertical,
//         itemBuilder: _builItem,
//         itemCount: lst(context).length,
//         itemSize: 320.sp,
//         onItemFocus: (index) {},
//         dynamicItemSize: true,
//       ),
//     );
//   }
// }

// Widget _builItem(BuildContext context, int index) {
//   List<SnapImage> imgs = lst(context);
//   SnapImage snapImage = imgs[index];
//   return GestureDetector(
//     onTap: () {
//       if (!snapImage.isLock) {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => const DetailsView(),
//             ));
//       }
//     },
//     child: Container(
//       color: AppColors.appBlack,
//       child: Card(
//         elevation: 1.75.sp,
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(15)),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomAppImage(imgPath: snapImage.imagePath),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Text(snapImage.imageName,
//                         style: Styless.textStyle24.copyWith(
//                           decoration: snapImage.isLock
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                         )),
//                   ),
//                   SizedBox(
//                     height: 12.h,
//                   ),
//                   snapImage.icon,
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
