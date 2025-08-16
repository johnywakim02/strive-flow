import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';


class AppThemeExtension extends ThemeExtension<AppThemeExtension> {

  final Color backgroundColor;
  final Color tileGradientFirstColor;
  final Color tileGradientSecondColor;
  final Color tabBarBackgroundColor;
  final Color tabBarItemSelectedColor;
  final Color tabBarItemUnselectedColor;

  AppThemeExtension({
    required this.backgroundColor,
    required this.tileGradientFirstColor,
    required this.tileGradientSecondColor,
    required this.tabBarBackgroundColor,
    required this.tabBarItemSelectedColor,
    required this.tabBarItemUnselectedColor
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? backgroundColor,
    Color? tileGradientFirstColor,
    Color? tileGradientSecondColor,
    Color? tabBarBackgroundColor,
    Color? tabBarItemSelectedColor,
    Color? tabBarItemUnselectedColor
  }){
    return AppThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor, 
      tileGradientFirstColor: tileGradientFirstColor ?? this.tileGradientFirstColor,
      tileGradientSecondColor: tileGradientSecondColor ?? this.tileGradientSecondColor,
      tabBarBackgroundColor: tabBarBackgroundColor ?? this.tabBarBackgroundColor,
      tabBarItemSelectedColor: tabBarItemSelectedColor ?? this.tabBarItemSelectedColor,
      tabBarItemUnselectedColor: tabBarItemUnselectedColor ?? this.tabBarItemUnselectedColor,
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
      tabBarBackgroundColor: Color.lerp(tabBarBackgroundColor, other.tabBarBackgroundColor, t)!,
      tabBarItemSelectedColor: Color.lerp(tabBarItemSelectedColor, other.tabBarItemSelectedColor, t)!,
      tabBarItemUnselectedColor: Color.lerp(tabBarItemUnselectedColor, other.tabBarItemUnselectedColor, t)!,
    );
  }
}

final AppThemeExtension appThemeExtension = AppThemeExtension(
  backgroundColor: AppColors.linen, 
  tileGradientFirstColor: AppColors.lightButterCream,
  tileGradientSecondColor: AppColors.softGoldenPeach,
  tabBarBackgroundColor: AppColors.dustyRose,
  tabBarItemSelectedColor: AppColors.warmRust,
  tabBarItemUnselectedColor: AppColors.paleRose
);
