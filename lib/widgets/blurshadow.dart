import 'package:flutter/material.dart';
import 'package:ngo_index/utils/colors.dart';

BoxShadow BlurShadow() {
  return BoxShadow(
    color: AppColors.secondaryColor.withOpacity(0.2),
    spreadRadius: 1,
    offset: Offset(1, 3),
    blurRadius: 5,
  );
}
