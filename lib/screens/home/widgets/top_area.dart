import 'package:flutter/material.dart';
import 'package:ngo_index/utils/colors.dart';
import 'package:ngo_index/utils/dimensions.dart';
import 'package:ngo_index/widgets/app_heavy_text.dart';
import 'package:ngo_index/widgets/app_text.dart';

class HomeScreenTopArea extends StatelessWidget {
  const HomeScreenTopArea({
    super.key,
    required this.visitorName,
    required this.currentNgo,
  });

  final String visitorName;
  final String currentNgo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppHeavyText(
              text: 'Hi $visitorName!',
              fontWeight: FontWeight.w900,
            ),
            const Icon(
              Icons.notifications_outlined,
              color: AppColors.secondaryColor,
            )
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.person_pin_circle_outlined,
            ),
            AppText(
              text: currentNgo,
              size: Dimensions.font16 - 2,
            )
          ],
        )
      ],
    );
  }
}
