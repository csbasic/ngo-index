// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ngo_index/utils/dimensions.dart';
import 'package:ngo_index/widgets/app_heavy_text.dart';
import 'package:ngo_index/widgets/app_text.dart';
import 'package:ngo_index/widgets/blurshadow.dart';

class NgoList extends StatelessWidget {
  const NgoList({
    super.key,
    required this.picLinkList,
  });

  final List<String> picLinkList;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(
            left: Dimensions.width10,
            right: Dimensions.width20,
            top: Dimensions.height5),
        child: Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: Dimensions.height10, left: Dimensions.width10),
                    height: Dimensions.height20 * 5,
                    width: Dimensions.height20 * 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius30 - 20),
                        ),
                        // border: Border.all(
                        //   color: AppColors.textBlack.withOpacity(0.3),
                        //   style: BorderStyle.solid,
                        // ),
                        boxShadow: [BlurShadow()]),
                    child: ClipRRect(
                      child: Image(
                        image: Image.asset(picLinkList[index]).image,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimensions.radius30 - 20)),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppHeavyText(
                            text: "Humaniterian Upfront",
                            fontWeight: FontWeight.w400,
                            size: Dimensions.font16 + 2,
                          ),
                          AppText(text: '@ Small Soppo'),
                        ],
                      )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
