import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';


class AppColorsThemeExtension extends ThemeExtension<AppColorsThemeExtension> {

  final Color backgroundColor;
  final Color tileGradientFirstColor;
  final Color tileGradientSecondColor;
  final Color tabBarBackgroundColor;
  final Color tabBarItemSelectedColor;
  final Color tabBarItemUnselectedColor;
  final Color appBarBackgroundColor;
  final Color primaryButtonBackgroundColor;
  final Color primaryButtonForegroundColor;
  final Color tertiaryButtonForegroundColor;
  final Color textFieldBackgroundColor;
  final Color textFieldEnabledBorderColor;
  final Color textFieldFocusedBorderColor;
  final Color textFieldLabelColor;
  final Color textFieldHintColor;

  AppColorsThemeExtension({
    required this.backgroundColor,
    required this.tileGradientFirstColor,
    required this.tileGradientSecondColor,
    required this.tabBarBackgroundColor,
    required this.tabBarItemSelectedColor,
    required this.tabBarItemUnselectedColor,
    required this.appBarBackgroundColor,
    required this.primaryButtonBackgroundColor,
    required this.primaryButtonForegroundColor,
    required this.tertiaryButtonForegroundColor,
    required this.textFieldBackgroundColor,
    required this.textFieldEnabledBorderColor,
    required this.textFieldFocusedBorderColor,
    required this.textFieldLabelColor,
    required this.textFieldHintColor,
  });

  @override
  ThemeExtension<AppColorsThemeExtension> copyWith({
    Color? backgroundColor,
    Color? tileGradientFirstColor,
    Color? tileGradientSecondColor,
    Color? tabBarBackgroundColor,
    Color? tabBarItemSelectedColor,
    Color? tabBarItemUnselectedColor,
    Color? appBarBackgroundColor,
    Color? primaryButtonBackgroundColor,
    Color? primaryButtonForegroundColor,
    Color? tertiaryButtonForegroundColor,
    Color? textFieldBackgroundColor,
    Color? textFieldEnabledBorderColor,
    Color? textFieldFocusedBorderColor,
    Color? textFieldLabelColor,
    Color? textFieldHintColor,
  }){
    return AppColorsThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor, 
      tileGradientFirstColor: tileGradientFirstColor ?? this.tileGradientFirstColor,
      tileGradientSecondColor: tileGradientSecondColor ?? this.tileGradientSecondColor,
      tabBarBackgroundColor: tabBarBackgroundColor ?? this.tabBarBackgroundColor,
      tabBarItemSelectedColor: tabBarItemSelectedColor ?? this.tabBarItemSelectedColor,
      tabBarItemUnselectedColor: tabBarItemUnselectedColor ?? this.tabBarItemUnselectedColor,
      appBarBackgroundColor: appBarBackgroundColor ?? this.appBarBackgroundColor,
      primaryButtonBackgroundColor: primaryButtonBackgroundColor ?? this.primaryButtonBackgroundColor,
      primaryButtonForegroundColor: primaryButtonForegroundColor ?? this.primaryButtonForegroundColor,
      tertiaryButtonForegroundColor: tertiaryButtonForegroundColor ?? this.tertiaryButtonForegroundColor,
      textFieldBackgroundColor: textFieldBackgroundColor ?? this.textFieldBackgroundColor,
      textFieldEnabledBorderColor: textFieldEnabledBorderColor ?? this.textFieldEnabledBorderColor,
      textFieldFocusedBorderColor: textFieldFocusedBorderColor ?? this.textFieldFocusedBorderColor,
      textFieldLabelColor: textFieldLabelColor ?? this.textFieldLabelColor,
      textFieldHintColor: textFieldHintColor ?? this.textFieldHintColor,
    );
  }

  @override
  ThemeExtension<AppColorsThemeExtension> lerp(covariant ThemeExtension<AppColorsThemeExtension>? other, double t) {
    if (other is! AppColorsThemeExtension){
      return this;
    }
    return AppColorsThemeExtension(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!, 
      tileGradientFirstColor: Color.lerp(tileGradientFirstColor, other.tileGradientFirstColor, t)!,
      tileGradientSecondColor: Color.lerp(tileGradientSecondColor, other.tileGradientSecondColor, t)!,
      tabBarBackgroundColor: Color.lerp(tabBarBackgroundColor, other.tabBarBackgroundColor, t)!,
      tabBarItemSelectedColor: Color.lerp(tabBarItemSelectedColor, other.tabBarItemSelectedColor, t)!,
      tabBarItemUnselectedColor: Color.lerp(tabBarItemUnselectedColor, other.tabBarItemUnselectedColor, t)!,
      appBarBackgroundColor: Color.lerp(appBarBackgroundColor, other.appBarBackgroundColor, t)!,
      primaryButtonBackgroundColor: Color.lerp(primaryButtonBackgroundColor, other.primaryButtonBackgroundColor, t)!,
      primaryButtonForegroundColor: Color.lerp(primaryButtonForegroundColor, other.primaryButtonForegroundColor, t)!,
      tertiaryButtonForegroundColor: Color.lerp(tertiaryButtonForegroundColor, other.tertiaryButtonForegroundColor, t)!,
      textFieldBackgroundColor: Color.lerp(textFieldBackgroundColor, other.textFieldBackgroundColor, t)!,
      textFieldEnabledBorderColor: Color.lerp(textFieldEnabledBorderColor, other.textFieldEnabledBorderColor, t)!,
      textFieldFocusedBorderColor: Color.lerp(textFieldFocusedBorderColor, other.textFieldFocusedBorderColor, t)!,
      textFieldLabelColor: Color.lerp(textFieldLabelColor, other.textFieldLabelColor, t)!,
      textFieldHintColor: Color.lerp(textFieldHintColor, other.textFieldHintColor, t)!,
    );
  }
}

final AppColorsThemeExtension appColorsThemeExtension = AppColorsThemeExtension(
  backgroundColor: AppColors.linen, 
  tileGradientFirstColor: AppColors.dustyRose.withAlpha(180),
  tileGradientSecondColor: AppColors.dustyRose.withAlpha(100),
  tabBarBackgroundColor: AppColors.dustyRose,
  tabBarItemSelectedColor: AppColors.warmRust,
  tabBarItemUnselectedColor: AppColors.paleRose,
  appBarBackgroundColor: AppColors.dustyRose,
  primaryButtonBackgroundColor: AppColors.warmRust,
  primaryButtonForegroundColor: AppColors.paleRose,
  tertiaryButtonForegroundColor: AppColors.warmRust,
  textFieldBackgroundColor: Colors.white30,
  textFieldEnabledBorderColor: AppColors.paleRose,
  textFieldFocusedBorderColor: AppColors.dustyRose,
  textFieldLabelColor: AppColors.warmRust,
  textFieldHintColor: AppColors.warmRust,
);
