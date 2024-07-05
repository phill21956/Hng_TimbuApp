import 'package:flutter/material.dart';

class ColorsClass {
  Color orangeColor = const Color(0xffE5571A);
  Color orangeColor2 = const Color(0xffFFE2D6);
  Color blackColor = const Color(0xff080808);
  Color blackColor2 = const Color(0xff151514);
  Color whiteColor = const Color(0xFFFCFBFB);
  Color greyColor = const Color(0XFFE5E5E5);
  Color lightGreyColor = const Color(0XFFF7F7F7);

  List<Color> loadingGradient = [
    Colors.grey.withOpacity(1),
    Colors.grey,
  ];
}

ColorsClass get colorsClass => ColorsClass();
