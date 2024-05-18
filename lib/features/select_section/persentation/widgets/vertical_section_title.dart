import 'package:flutter/material.dart';

class VerticalSectionTitle extends StatelessWidget {
  const VerticalSectionTitle({
    
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RotatedBox(
        quarterTurns: -1,
        child: FittedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 12),
            child: Text(
              title,
              maxLines: 1,
              // style: context.displayLarge.copyWith(color: SHColors.textColor),
            ),
          ),
        ),
      ),
    );
  }
}
