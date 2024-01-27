// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  // ignore: prefer_typing_uninitialized_variables
  final FontWeight? weight;
  final Color color;
  final double? letterSpacing;
  dynamic overflow;
  final double? wordSpacing;

  AppText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.color = Colors.black54,
      this.weight,
      this.letterSpacing,
      this.wordSpacing,
      this.overflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          color: color,
          fontSize: size,
          fontWeight: weight,
          fontFamily: 'Roboto'),
    );
  }
}
