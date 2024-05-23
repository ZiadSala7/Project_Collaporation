import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });
  final String text;
  final Icon icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
          title: Text(text),
          titleTextStyle: Styless.textStyle28.copyWith(
            fontWeight: FontWeight.w400,
          ),
          leading: icon),
    );
  }
}
