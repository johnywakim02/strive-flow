import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';


class AppThemeExtension extends ThemeExtension<AppThemeExtension> {

  final Color backgroundColor;
  final Color tileGradientFirstColor;
  final Color tileGradientSecondColor;
  final Color tabBarBackgroundColor;
  final Color tabBarItemSelectedColor;
  final Color tabBarItemUnselectedColor;
  final Color appBarBackgroundColor;
  final Color fabBackgroundColor;
  final Color fabForegroundColor;
  final Color textFieldBackgroundColor;
  final Color textFieldEnabledBorderColor;
  final Color textFieldFocusedBorderColor;
  final Color textFieldLabelColor;
  final Color textFieldHintColor;

  AppThemeExtension({
    required this.backgroundColor,
    required this.tileGradientFirstColor,
    required this.tileGradientSecondColor,
    required this.tabBarBackgroundColor,
    required this.tabBarItemSelectedColor,
    required this.tabBarItemUnselectedColor,
    required this.appBarBackgroundColor,
    required this.fabBackgroundColor,
    required this.fabForegroundColor,
    required this.textFieldBackgroundColor,
    required this.textFieldEnabledBorderColor,
    required this.textFieldFocusedBorderColor,
    required this.textFieldLabelColor,
    required this.textFieldHintColor,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    Color? backgroundColor,
    Color? tileGradientFirstColor,
    Color? tileGradientSecondColor,
    Color? tabBarBackgroundColor,
    Color? tabBarItemSelectedColor,
    Color? tabBarItemUnselectedColor,
    Color? appBarBackgroundColor,
    Color? fabBackgroundColor,
    Color? fabForegroundColor,
    Color? textFieldBackgroundColor,
    Color? textFieldEnabledBorderColor,
    Color? textFieldFocusedBorderColor,
    Color? textFieldLabelColor,
    Color? textFieldHintColor,
  }){
    return AppThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor, 
      tileGradientFirstColor: tileGradientFirstColor ?? this.tileGradientFirstColor,
      tileGradientSecondColor: tileGradientSecondColor ?? this.tileGradientSecondColor,
      tabBarBackgroundColor: tabBarBackgroundColor ?? this.tabBarBackgroundColor,
      tabBarItemSelectedColor: tabBarItemSelectedColor ?? this.tabBarItemSelectedColor,
      tabBarItemUnselectedColor: tabBarItemUnselectedColor ?? this.tabBarItemUnselectedColor,
      appBarBackgroundColor: appBarBackgroundColor ?? this.appBarBackgroundColor,
      fabBackgroundColor: fabBackgroundColor ?? this.fabBackgroundColor,
      fabForegroundColor: fabForegroundColor ?? this.fabForegroundColor,
      textFieldBackgroundColor: textFieldBackgroundColor ?? this.textFieldBackgroundColor,
      textFieldEnabledBorderColor: textFieldEnabledBorderColor ?? this.textFieldEnabledBorderColor,
      textFieldFocusedBorderColor: textFieldFocusedBorderColor ?? this.textFieldFocusedBorderColor,
      textFieldLabelColor: textFieldLabelColor ?? this.textFieldLabelColor,
      textFieldHintColor: textFieldHintColor ?? this.textFieldHintColor,
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
      appBarBackgroundColor: Color.lerp(appBarBackgroundColor, other.appBarBackgroundColor, t)!,
      fabBackgroundColor: Color.lerp(fabBackgroundColor, other.fabBackgroundColor, t)!,
      fabForegroundColor: Color.lerp(fabForegroundColor, other.fabForegroundColor, t)!,
      textFieldBackgroundColor: Color.lerp(textFieldBackgroundColor, other.textFieldBackgroundColor, t)!,
      textFieldEnabledBorderColor: Color.lerp(textFieldEnabledBorderColor, other.textFieldEnabledBorderColor, t)!,
      textFieldFocusedBorderColor: Color.lerp(textFieldFocusedBorderColor, other.textFieldFocusedBorderColor, t)!,
      textFieldLabelColor: Color.lerp(textFieldLabelColor, other.textFieldLabelColor, t)!,
      textFieldHintColor: Color.lerp(textFieldHintColor, other.textFieldHintColor, t)!,
    );
  }
}

final AppThemeExtension appThemeExtension = AppThemeExtension(
  backgroundColor: AppColors.linen, 
  tileGradientFirstColor: AppColors.lightButterCream,
  tileGradientSecondColor: AppColors.softGoldenPeach,
  tabBarBackgroundColor: AppColors.dustyRose,
  tabBarItemSelectedColor: AppColors.warmRust,
  tabBarItemUnselectedColor: AppColors.paleRose,
  appBarBackgroundColor: AppColors.dustyRose,
  fabBackgroundColor: AppColors.warmRust,
  fabForegroundColor: AppColors.paleRose,
  textFieldBackgroundColor: Colors.white30,
  textFieldEnabledBorderColor: AppColors.paleRose,
  textFieldFocusedBorderColor: AppColors.dustyRose,
  textFieldLabelColor: AppColors.warmRust,
  textFieldHintColor: AppColors.warmRust,
);
