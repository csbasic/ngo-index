import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngo_index/utils/colors.dart';
import 'package:ngo_index/utils/dimensions.dart';
import 'package:ngo_index/widgets/app_heavy_text.dart';
import 'package:ngo_index/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double? width;
  String text;
  Color? backgroundColor;
  bool? hasBorder;
  double? borderSize;
  Color borderColor;
  Color? textColor;
  Icon icon;
  ResponsiveButton({
    Key? key,
    this.width = 120,
    this.isResponsive = false,
    this.text = 'Click Here!',
    this.backgroundColor = AppColors.textWhite,
    this.hasBorder = false,
    this.borderSize = 1,
    this.borderColor = AppColors.secondaryColor,
    this.textColor = AppColors.textBlack,
    this.icon = const Icon(Icons.stop),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive ? double.maxFinite : width,
        height: Dimensions.height20 * 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: hasBorder == true
              ? Border.all(color: borderColor)
              : Border.all(width: 0, color: Colors.white),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: isResponsive == true
                        ? const EdgeInsets.only(left: 30)
                        : const EdgeInsets.all(0),
                    child: AppHeavyText(
                      text: text,
                      color: textColor,
                    ),
                  )
                : Container(),
            icon,
          ],
        ),
      ),
    );
  }
}
