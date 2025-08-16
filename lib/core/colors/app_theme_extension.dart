import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';


class AppThemeExtension extends ThemeExtension<AppThemeExtension> {

  final Color backgroundColor;
  final Color tileGradientFirstColor;
  final Color tileGradientSecondColor;

  AppThemeExtension({
    required this.backgroundColor,
    required this.tileGradientFirstColor,
    required this.tileGradientSecondColor,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? backgroundColor,
    Color? tileGradientFirstColor,
    Color? tileGradientSecondColor,
  }){
    return AppThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor, 
      tileGradientFirstColor: tileGradientFirstColor ?? this.tileGradientFirstColor,
      tileGradientSecondColor: tileGradientSecondColor ?? this.tileGradientSecondColor,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(covariant ThemeExtension<AppThemeExtension>? other, double t) {
    if (other is! AppThemeExtension){
      return this;
    }
    return AppThemeExtension(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!, 
      tileGradientFirstColor: Color.lerp(tileGradientFirstColor, other.tileGradientFirstColor, t)!,
      tileGradientSecondColor: Color.lerp(tileGradientSecondColor, other.tileGradientSecondColor, t)!,
    );
  }
}

final AppThemeExtension appThemeExtension = AppThemeExtension(
  backgroundColor: AppColors.linen, 
  tileGradientFirstColor: AppColors.lightButterCream,
  tileGradientSecondColor: AppColors.softGoldenPeach
);
