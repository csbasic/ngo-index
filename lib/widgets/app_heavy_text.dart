// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../utils/dimensions.dart';

class AppHeavyText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight? fontWeight;
  TextOverflow overflow;
  AppHeavyText({
    Key? key,
    this.color = const Color(0xFF332d2d),
    required this.text,
    this.size = 0,
    this.fontWeight,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
