import 'package:flutter/material.dart';

class CelestialImage {
  Widget celestialImage(String imgUrl, double height, double width) => Image(
        image: AssetImage(imgUrl),
        height: height,
        width: width,
      );

  Widget celestialIcon(String imgUrl, double size, Color tint) => ImageIcon(
        AssetImage(imgUrl),
        size: size,
        color: tint,
      );
}
