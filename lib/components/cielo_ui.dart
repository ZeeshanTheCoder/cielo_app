import 'package:flutter/material.dart';
import '../core/colors.dart';

class CieloUI {
  static const bg = AppColors.primaryColor;
  static const panel = AppColors.blueColor;

  static const red = AppColors.redColor;
  static const green = AppColors.greenColor;

  static const textDim = AppColors.greyColor;

  static BoxDecoration card() => BoxDecoration(
        color: panel,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.whiteColor.withValues(alpha: 0.06)),
      );
}
