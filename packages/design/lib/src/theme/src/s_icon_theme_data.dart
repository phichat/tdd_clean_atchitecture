part of '../theme.dart';

// ,

extension IconTheme on BuildContext {
  static IconThemeData get iconDarkTheme =>
      const IconThemeData(color: SColors.kWhite, size: 20);

  static IconThemeData get iconLightTheme =>
      const IconThemeData(color: SColors.kGreyish, size: 20);
}
