import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParallaxImageCard extends StatelessWidget {
  const ParallaxImageCard(
      {super.key, required this.imageUrl, this.parallaxValue = 0});

  final String imageUrl;
  final double parallaxValue;

  BoxDecoration get _perallaxUrlImageDecoration => BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.blueAccent,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(-7, 7),
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          alignment: Alignment(lerpDouble(.5, -.5, parallaxValue)!, 0),
        ),
      );

  BoxDecoration get _vignetteDecoration => BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        gradient: const RadialGradient(
          radius: 2,
          colors: [Colors.transparent, Colors.white],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(decoration: _perallaxUrlImageDecoration),
        DecoratedBox(decoration: _vignetteDecoration),
      ],
    );
  }
}
