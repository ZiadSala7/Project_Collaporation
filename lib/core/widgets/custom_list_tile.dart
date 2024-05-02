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
        titleTextStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: 24,
            ),
        leading: icon
      ),
    );
  }
}
