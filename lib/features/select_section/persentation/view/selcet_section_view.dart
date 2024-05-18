import 'package:cv_project_team/features/select_section/persentation/widgets/page_indicators.dart';
import 'package:cv_project_team/features/select_section/persentation/widgets/select_section_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectSectionScreen extends StatefulWidget {
  const SelectSectionScreen({super.key});

  @override
  State<SelectSectionScreen> createState() => _SelectSectionScreenState();
}

class _SelectSectionScreenState extends State<SelectSectionScreen> {
  final controller = PageController(viewportFraction: 0.8);
  final ValueNotifier<double> pageNotifier = ValueNotifier(0);
  final ValueNotifier<int> sectionSelectorNotifier = ValueNotifier(-1);

  @override
  void initState() {
    controller.addListener(pageListener);
    super.initState();
  }

  @override
  void dispose() {
    controller
      ..removeListener(pageListener)
      ..dispose();
    super.dispose();
  }

  void pageListener() {
    pageNotifier.value = controller.page ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 101, 61),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text("SELECT A Section",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            SizedBox(
              height: 32.h,
            ),
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  SelectSectionViewBody(
                    pageNotifier: pageNotifier,
                    sectionSelectorNotifier: sectionSelectorNotifier,
                    controller: controller,
                  ),
                  Positioned.fill(
                    top: null,
                    bottom: 40,
                    child: Column(
                      children: [
                        PageIndicators(
                          sectionSelectorNotifier: sectionSelectorNotifier,
                          pageNotifier: pageNotifier,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
