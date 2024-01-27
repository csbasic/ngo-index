// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ngo_index/utils/dimensions.dart';
import 'package:ngo_index/widgets/app_heavy_text.dart';
import 'package:ngo_index/widgets/blurshadow.dart';

class CarouselItemImages extends StatelessWidget {
  const CarouselItemImages({
    Key? key,
    required this.ngoName,
    required this.imageLink,
  }) : super(key: key);

  final String ngoName;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(
            top: Dimensions.height5, bottom: Dimensions.height20),
        height: Dimensions.width20 * 25,
        width: Dimensions.width20 * 20,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius:
              BorderRadius.all(Radius.circular(Dimensions.radius30 - 20)),
          boxShadow: [BlurShadow()],
        ),
        child: ClipRRect(
          child: Image(
            image: Image.asset(imageLink).image,
            fit: BoxFit.cover,
          ),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimensions.radius30 - 20)),
        ),
      ),
      Positioned(
          bottom: Dimensions.height20 + 10,
          left: Dimensions.width20 + 10,
          child: AppHeavyText(
            text: ngoName,
          ))
    ]);
  }
}
