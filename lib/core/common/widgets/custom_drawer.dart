import 'package:cv_project_team/core/app/constant.dart';
import 'package:cv_project_team/core/common/animations/animate_do.dart';
import 'package:cv_project_team/core/language/app_localizations.dart';
import 'package:cv_project_team/core/language/lang_keys.dart';
import 'package:cv_project_team/core/styles/colors/app_color.dart';
import 'package:cv_project_team/core/styles/image/app_images.dart';
import 'package:cv_project_team/core/common/widgets/custom_list_tile.dart';
import 'package:cv_project_team/features/about/presentation/about_view.dart';
import 'package:cv_project_team/features/about/presentation/contact_page.dart';
import 'package:cv_project_team/features/home/presentation/views/home_view.dart';
import 'package:cv_project_team/features/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInLeft(
      duration: animationDuration,
      child: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                image: DecorationImage(
                  image: AssetImage(AppImages.imagesTurath),
                ),
              ),
            ),
            CustomListTile(
              text: AppLocalizations.of(context)!
                  .translate(LangKeys.home)
                  .toString(),
              icon: Icon(
                Icons.home,
                size: 28.sp,
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                  (route) => false,
                );
              },
            ),
            CustomListTile(
              text: AppLocalizations.of(context)!
                  .translate(LangKeys.settings)
                  .toString(),
              icon: Icon(
                Icons.settings,
                size: 28.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsView(),
                  ),
                );
              },
            ),
            CustomListTile(
              text: AppLocalizations.of(context)!
                  .translate(LangKeys.about)
                  .toString(),
              icon: Icon(
                Icons.info,
                size: 28.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutView(),
                  ),
                );
              },
            ),
            CustomListTile(
              text: AppLocalizations.of(context)!
                  .translate(LangKeys.contactWithUs)
                  .toString(),
              icon: Icon(
                Icons.quick_contacts_mail_sharp,
                size: 28.sp,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
