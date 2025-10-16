import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UiHelper {
  // 🖼 Normal Image Widget
  static CustomImage({
    required String img,
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return Image.asset(
      "assets/images/$img",
      height: height,
      width: width,
      fit: fit,
    );
  }

  // 🧾 Text Widget
  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }

  // 🪄 SVG Widget
  static Widget CustomSvg({
    required String svgPath,
    double? height,
    double? width,
    Color? color,
  }) {
    return SvgPicture.asset(
      svgPath,
      height: height,
      width: width,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
    );
  }

}
